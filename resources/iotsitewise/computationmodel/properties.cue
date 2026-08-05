package computationmodel

import "strings"

#Properties: {
	// The configuration for the computation model.
	ComputationModelConfiguration: #ComputationModelConfiguration
	// The data binding for the computation model.
	ComputationModelDataBinding: #ComputationModelDataBinding
	// A description about the computation model.
	ComputationModelDescription?: string & =~"^[a-zA-Z0-9 _\\-#$*!@]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The name of the computation model.
	ComputationModelName: string & =~"^[a-zA-Z0-9 _\\-#$*!@]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AnomalyDetectionComputationModelConfiguration: {
	// Input properties for anomaly detection.
	InputProperties: string & =~"^\\$\\{[a-z][a-z0-9_]*\\}$" & strings.MinRunes(4) & strings.MaxRunes(67)
	// Result property for anomaly detection.
	ResultProperty: string & =~"^\\$\\{[a-z][a-z0-9_]*\\}$" & strings.MinRunes(4) & strings.MaxRunes(67)
}

#AssetModelPropertyBindingValue: {
	// The ID of the asset model.
	AssetModelId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// The ID of the asset model property.
	PropertyId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
}

#AssetPropertyBindingValue: {
	// The ID of the asset.
	AssetId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// The ID of the asset property.
	PropertyId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
}

#ComputationModelConfiguration: {
	// Contains configuration for anomaly detection computation model.
	AnomalyDetection?: #AnomalyDetectionComputationModelConfiguration
}

#ComputationModelDataBinding: {...}

#ComputationModelDataBindingValue: {
	// Defines an asset model property binding.
	AssetModelProperty?: #AssetModelPropertyBindingValue
	// Defines an asset property binding.
	AssetProperty?: #AssetPropertyBindingValue
	// Defines a list of computation model binding values.
	List?: [...#ComputationModelDataBindingValue]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
