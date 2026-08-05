package componenttype

import "strings"

#Properties: {
	// The ID of the component type.
	ComponentTypeId: string & =~"[a-zA-Z_\\.\\-0-9:]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// An map of the composite component types in the component type. Each composite component type's key must be unique to this map.
	CompositeComponentTypes?: {...}
	// The description of the component type.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	// Specifies the parent component type to extend.
	ExtendsFrom?: [...#ParentComponentType]
	// a Map of functions in the component type. Each function's key must be unique to this map.
	Functions?: {...}
	// A Boolean value that specifies whether an entity can have more than one component of this type.
	IsSingleton?: bool
	// An map of the property definitions in the component type. Each property definition's key must be unique to this map.
	PropertyDefinitions?: {...}
	// An map of the property groups in the component type. Each property group's key must be unique to this map.
	PropertyGroups?: {...}
	// A map of key-value pairs to associate with a resource.
	Tags?: {...}
	// The ID of the workspace that contains the component type.
	WorkspaceId: string & =~"[a-zA-Z_0-9][a-zA-Z_\\-0-9]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#CompositeComponentType: {
	// The id of the composite component type.
	ComponentTypeId?: string & =~"[a-zA-Z_\\.\\-0-9:]+" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#DataConnector: {
	// A Boolean value that specifies whether the data connector is native to IoT TwinMaker.
	IsNative?: bool
	// The Lambda function associated with this data connector.
	Lambda?: #LambdaFunction
}

#DataType: {
	// The allowed values for this data type.
	AllowedValues?: [...#DataValue]
	// The nested type in the data type.
	NestedType?: #DataType
	// A relationship that associates a component with another component.
	Relationship?: #Relationship
	// The underlying type of the data type.
	Type: "RELATIONSHIP" | "STRING" | "LONG" | "BOOLEAN" | "INTEGER" | "DOUBLE" | "LIST" | "MAP"
	// The unit of measure used in this data type.
	UnitOfMeasure?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#DataValue: {
	// A Boolean value.
	BooleanValue?: bool
	// A double value.
	DoubleValue?: number
	// An expression that produces the value.
	Expression?: string & =~"(^\\$\\{Parameters\\.[a-zA-z]+([a-zA-z_0-9]*)}$)" & strings.MinRunes(1) & strings.MaxRunes(316)
	// An integer value.
	IntegerValue?: int
	// A list of multiple values.
	ListValue?: [...#DataValue]
	// A long value.
	LongValue?: number
	// An object that maps strings to multiple DataValue objects.
	MapValue?: {...}
	// A value that relates a component to another component.
	RelationshipValue?: {
		TargetComponentName?: string & =~"[a-zA-Z_\\-0-9]+" & strings.MinRunes(1) & strings.MaxRunes(256)
		TargetEntityId?: string & =~"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|^[a-zA-Z0-9][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	}
	// A string value.
	StringValue?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Function: {
	// The data connector.
	ImplementedBy?: #DataConnector
	// The required properties of the function.
	RequiredProperties?: [...#RequiredProperty]
	// The scope of the function.
	Scope?: "ENTITY" | "WORKSPACE"
}

#LambdaFunction: {
	Arn: string & =~"arn:((aws)|(aws-cn)|(aws-us-gov)):lambda:[a-z0-9-]+:[0-9]{12}:function:[\\/a-zA-Z0-9_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#PropertyDefinition: {
	// An object that specifies information about a property.
	Configurations?: {...}
	// An object that contains information about the data type.
	DataType?: #DataType
	// An object that contains the default value.
	DefaultValue?: #DataValue
	// A Boolean value that specifies whether the property ID comes from an external data store.
	IsExternalId?: bool
	// A Boolean value that specifies whether the property is required.
	IsRequiredInEntity?: bool
	// A Boolean value that specifies whether the property is stored externally.
	IsStoredExternally?: bool
	// A Boolean value that specifies whether the property consists of time series data.
	IsTimeSeries?: bool
}

#PropertyGroup: {
	// The type of property group.
	GroupType?: "TABULAR"
	// The list of property names in the property group.
	PropertyNames?: [...#PropertyName]
}

#Relationship: {
	// The type of the relationship.
	RelationshipType?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The ID of the target component type associated with this relationship.
	TargetComponentTypeId?: string & =~"[a-zA-Z_\\.\\-0-9:]+" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Status: {
	Error?: {...} | {
		Code?: "VALIDATION_ERROR" | "INTERNAL_FAILURE"
		Message?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	}
	State?: "CREATING" | "UPDATING" | "DELETING" | "ACTIVE" | "ERROR"
}
