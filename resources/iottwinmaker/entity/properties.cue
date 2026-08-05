package entity

import "strings"

#Properties: {
	// A map that sets information about a component type.
	Components?: {...}
	// A map that sets information about a composite component.
	CompositeComponents?: {...}
	// The description of the entity.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	// The ID of the entity.
	EntityId?: string & =~"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|^[a-zA-Z0-9][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The name of the entity.
	EntityName: string & =~"[a-zA-Z_0-9-.][a-zA-Z_0-9-. ]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The ID of the parent entity.
	ParentEntityId?: string & =~"\\$ROOT|^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|^[a-zA-Z0-9][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A key-value pair to associate with a resource.
	Tags?: {...}
	// The ID of the workspace.
	WorkspaceId: string & =~"[a-zA-Z_0-9][a-zA-Z_\\-0-9]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Component: {
	// The name of the component.
	ComponentName?: string & =~"[a-zA-Z_\\-0-9]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The ID of the component type.
	ComponentTypeId?: string & =~"[a-zA-Z_\\-0-9]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the property definition set in the component.
	DefinedIn?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The description of the component.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	// An object that maps strings to the properties to set in the component type. Each string in the mapping must be unique to this object.
	Properties?: {...}
	// An object that maps strings to the property groups to set in the component type. Each string in the mapping must be unique to this object.
	PropertyGroups?: {...}
	// The current status of the entity.
	Status?: #Status
}

#CompositeComponent: {
	// The name of the component.
	ComponentName?: string & =~"[a-zA-Z_\\-0-9]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The path of the component.
	ComponentPath?: string & =~"[a-zA-Z_\\-0-9/]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The ID of the component type.
	ComponentTypeId?: string & =~"[a-zA-Z_\\-0-9]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The description of the component.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	// An object that maps strings to the properties to set in the component type. Each string in the mapping must be unique to this object.
	Properties?: {...}
	// An object that maps strings to the property groups to set in the component type. Each string in the mapping must be unique to this object.
	PropertyGroups?: {...}
	// The current status of the component.
	Status?: #Status
}

#DataType: {
	// The allowed values for this data type.
	AllowedValues?: [...#DataValue]
	// The nested type in the data type.
	NestedType?: #DataType
	// A relationship that associates a component with another component.
	Relationship?: #Relationship
	// The underlying type of the data type.
	Type?: "RELATIONSHIP" | "STRING" | "LONG" | "BOOLEAN" | "INTEGER" | "DOUBLE" | "LIST" | "MAP"
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

#Definition: {
	// An object that specifies information about a property configuration.
	Configuration?: #PropertyDefinitionConfiguration
	// An object that contains information about the data type.
	DataType?: #DataType
	// An object that contains the default value.
	DefaultValue?: #DataValue
	// A Boolean value that specifies whether the property ID comes from an external data store.
	IsExternalId?: bool
	// A Boolean value that specifies whether the property definition can be updated.
	IsFinal?: bool
	// A Boolean value that specifies whether the property definition is imported from an external data store.
	IsImported?: bool
	// A Boolean value that specifies whether the property definition is inherited from a parent entity.
	IsInherited?: bool
	// A Boolean value that specifies whether the property is required.
	IsRequiredInEntity?: bool
	// A Boolean value that specifies whether the property is stored externally.
	IsStoredExternally?: bool
	// A Boolean value that specifies whether the property consists of time series data.
	IsTimeSeries?: bool
}

#Property: {
	// The definition of the property.
	Definition?: #Definition
	// The value of the property.
	Value?: #DataValue
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
