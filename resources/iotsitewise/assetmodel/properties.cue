package assetmodel

import "strings"

#Properties: {
	// A description for the asset model.
	AssetModelDescription?: string
	// The external ID of the asset model.
	AssetModelExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// A unique, friendly name for the asset model.
	AssetModelName: string
	// The type of the asset model (ASSET_MODEL OR COMPONENT_MODEL or INTERFACE)
	AssetModelType?: string
	// a list of asset model and interface relationships
	EnforcedAssetModelInterfaceRelationships?: [...#EnforcedAssetModelInterfaceRelationship]
	// A list of key-value pairs that contain metadata for the asset model.
	Tags?: [...#Tag]
}

#AssetModelCompositeModel: {
	// The component model ID for which the composite model is composed of
	ComposedAssetModelId?: string
	// The property definitions of the asset model. You can specify up to 200 properties per asset model.
	CompositeModelProperties?: [...#AssetModelProperty]
	// A description for the asset composite model.
	Description?: string
	// The External ID of the composite model
	ExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// The Actual ID of the composite model
	Id?: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// A unique, friendly name for the asset composite model.
	Name: string
	// The parent composite model External ID
	ParentAssetModelCompositeModelExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// The path of the composite model. This is only for derived composite models
	Path?: [...string]
	// The type of the composite model. For alarm composite models, this type is AWS/ALARM
	Type: string
}

#AssetModelHierarchy: {
	// The ID of the asset model. All assets in this hierarchy must be instances of the child AssetModelId asset model.
	ChildAssetModelId: string
	// Customer provided external ID for hierarchy
	ExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// Customer provided actual ID for hierarchy
	Id?: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// Customer provided logical ID for hierarchy.
	LogicalId?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the asset model hierarchy.
	Name: string
}

#AssetModelProperty: {
	// The data type of the asset model property.
	DataType: #DataType
	// The data type of the structure for this property.
	DataTypeSpec?: #DataTypeSpec
	// The External ID of the Asset Model Property
	ExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// The ID of the Asset Model Property
	Id?: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// Customer provided Logical ID for property.
	LogicalId?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the asset model property.
	Name: string
	// The property type
	Type: #PropertyType
	// The unit of the asset model property, such as Newtons or RPM.
	Unit?: string
}

#Attribute: {
	DefaultValue?: string
}

#DataType: "STRING" | "INTEGER" | "DOUBLE" | "BOOLEAN" | "STRUCT"

#DataTypeSpec: "AWS/ALARM_STATE"

#EnforcedAssetModelInterfacePropertyMapping: {
	// The external ID of the enforced asset model property
	AssetModelPropertyExternalId?: string
	// The logical ID of the enforced asset model property
	AssetModelPropertyLogicalId?: string
	// The external ID of the enforced interface property
	InterfaceAssetModelPropertyExternalId: string
}

#EnforcedAssetModelInterfaceRelationship: {
	// The ID of the interface that is enforced to the asset model
	InterfaceAssetModelId?: string
	// Contains information about enforced interface property and asset model property
	PropertyMappings?: [...#EnforcedAssetModelInterfacePropertyMapping]
}

#ExpressionVariable: {
	// The friendly name of the variable to be used in the expression.
	Name: string
	// The variable that identifies an asset property from which to use values.
	Value: #VariableValue
}

#Interval: string

#Metric: {
	// The mathematical expression that defines the metric aggregation function. You can specify up to 10 functions per expression.
	Expression: string
	// The list of variables used in the expression.
	Variables: [...#ExpressionVariable]
	// The window (time interval) over which AWS IoT SiteWise computes the metric's aggregation expression
	Window: #MetricWindow
}

#MetricWindow: {
	Tumbling?: #TumblingWindow
}

#Offset: string

#PropertyPathDefinition: {
	// The name of the property
	Name: string
}

#PropertyType: {
	Attribute?: #Attribute
	Metric?: #Metric
	Transform?: #Transform
	TypeName: #TypeName
}

#Tag: {
	Key: string
	Value: string
}

#Transform: {
	// The mathematical expression that defines the transformation function. You can specify up to 10 functions per expression.
	Expression: string
	// The list of variables used in the expression.
	Variables: [...#ExpressionVariable]
}

#TumblingWindow: {
	Interval: #Interval
	Offset?: #Offset
}

#TypeName: "Measurement" | "Attribute" | "Transform" | "Metric"

#VariableValue: {
	// The External ID of the hierarchy that is trying to be referenced
	HierarchyExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// The ID of the hierarchy that is trying to be referenced
	HierarchyId?: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	HierarchyLogicalId?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The External ID of the property that is trying to be referenced
	PropertyExternalId?: string & =~"[a-zA-Z0-9_][a-zA-Z_\\-0-9.:]*[a-zA-Z0-9_]+" & strings.MinRunes(2) & strings.MaxRunes(128)
	// The ID of the property that is trying to be referenced
	PropertyId?: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	PropertyLogicalId?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The path of the property that is trying to be referenced
	PropertyPath?: [...#PropertyPathDefinition]
}
