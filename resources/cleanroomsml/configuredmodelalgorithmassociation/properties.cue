package configuredmodelalgorithmassociation

import "strings"

#Properties: {
	ConfiguredModelAlgorithmArn: string & =~"^arn:aws[-a-z]*:cleanrooms-ml:[-a-z0-9]+:[0-9]{12}:configured-model-algorithm/[-a-zA-Z0-9_/.]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Description?: string & =~"^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$" & strings.MaxRunes(255)
	MembershipIdentifier: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	Name: string & =~"^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	PrivacyConfiguration?: #PrivacyConfiguration
	// An arbitrary set of tags (key-value pairs) for this cleanrooms-ml configured model algorithm association.
	Tags?: [...#Tag]
}

#CustomEntityConfig: {
	CustomDataIdentifiers: [...string & =~"^[a-zA-Z0-9\\_\\#\\=\\@\\/\\;\\,\\-\\ \\^\\$\\?\\[\\]\\{\\}\\|\\\\\\*\\+\\.\\(\\)]+$" & strings.MinRunes(1) & strings.MaxRunes(200)]
}

#LogRedactionConfiguration: {
	CustomEntityConfig?: #CustomEntityConfig
	EntitiesToRedact: [...#EntityType]
}

#LogsConfigurationPolicy: {
	AllowedAccountIds: [...string & =~"^[0-9]{12}$"]
	FilterPattern?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	LogRedactionConfiguration?: #LogRedactionConfiguration
	LogType?: #LogType
}

#MetricsConfigurationPolicy: {
	NoiseLevel: #NoiseLevelType
}

#PrivacyConfiguration: {
	Policies: #PrivacyConfigurationPolicies
}

#PrivacyConfigurationPolicies: {
	TrainedModelExports?: #TrainedModelExportsConfigurationPolicy
	TrainedModelInferenceJobs?: #TrainedModelInferenceJobsConfigurationPolicy
	TrainedModels?: #TrainedModelsConfigurationPolicy
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TrainedModelArtifactMaxSize: {
	Unit: #TrainedModelArtifactMaxSizeUnitType
	Value: number & >=0.01 & <=10
}

#TrainedModelExportsConfigurationPolicy: {
	FilesToExport: [...#TrainedModelExportFileType]
	MaxSize: #TrainedModelExportsMaxSize
}

#TrainedModelExportsMaxSize: {
	Unit: #TrainedModelExportsMaxSizeUnitType
	Value: number & >=0.01 & <=10
}

#TrainedModelInferenceJobsConfigurationPolicy: {
	ContainerLogs?: [...#LogsConfigurationPolicy]
	MaxOutputSize?: #TrainedModelInferenceMaxOutputSize
}

#TrainedModelInferenceMaxOutputSize: {
	Unit: #TrainedModelInferenceMaxOutputSizeUnitType
	Value: number & >=0.01 & <=50
}

#TrainedModelsConfigurationPolicy: {
	ContainerLogs?: [...#LogsConfigurationPolicy]
	ContainerMetrics?: #MetricsConfigurationPolicy
	MaxArtifactSize?: #TrainedModelArtifactMaxSize
}
