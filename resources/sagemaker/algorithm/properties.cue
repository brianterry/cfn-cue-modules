package algorithm

import "strings"

#Properties: {
	// A description of the algorithm.
	AlgorithmDescription?: string & strings.MaxRunes(1024)
	// The name of the algorithm.
	AlgorithmName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// Whether to certify the algorithm so that it can be listed in AWS Marketplace.
	CertifyForMarketplace?: bool
	InferenceSpecification?: #InferenceSpecification
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	TrainingSpecification: #TrainingSpecification
}

#CategoricalParameterRangeSpecification: {
	Values: [...string & strings.MaxRunes(256)]
}

#ChannelSpecification: {
	Description?: string & strings.MaxRunes(1024)
	IsRequired?: bool
	Name: string & =~"^[A-Za-z0-9\\.\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	SupportedCompressionTypes?: [..."None" | "Gzip"]
	SupportedContentTypes: [...string & strings.MaxRunes(256)]
	SupportedInputModes: [..."Pipe" | "File" | "FastFile"]
}

#ContinuousParameterRangeSpecification: {
	MaxValue: string & strings.MaxRunes(256)
	MinValue: string & strings.MaxRunes(256)
}

#HyperParameterSpecification: {
	DefaultValue?: string & strings.MaxRunes(2500)
	Description?: string & strings.MaxRunes(1024)
	IsRequired?: bool
	IsTunable?: bool
	Name: string & strings.MaxRunes(256)
	Range?: #ParameterRange
	Type: "Integer" | "Continuous" | "Categorical" | "FreeText"
}

#HyperParameterTuningJobObjective: {
	MetricName: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Type: "Maximize" | "Minimize"
}

#InferenceSpecification: {
	Containers: [...#ModelPackageContainerDefinition]
	SupportedContentTypes?: [...string & strings.MaxRunes(256)]
	SupportedRealtimeInferenceInstanceTypes?: [...string]
	SupportedResponseMIMETypes?: [...string & =~"^[-\\w]+\\/.+$" & strings.MaxRunes(1024)]
	SupportedTransformInstanceTypes?: [...string]
}

#IntegerParameterRangeSpecification: {
	MaxValue: string & strings.MaxRunes(256)
	MinValue: string & strings.MaxRunes(256)
}

#MetricDefinition: {
	Name: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Regex: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(500)
}

#ModelInput: {
	DataInputConfig: string
}

#ModelPackageContainerDefinition: {
	ContainerHostname?: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}$" & strings.MaxRunes(63)
	Environment?: {...}
	Framework?: string
	FrameworkVersion?: string & =~"^[0-9]\\.[A-Za-z0-9.-]+$" & strings.MinRunes(3) & strings.MaxRunes(10)
	Image: string & strings.MaxRunes(255)
	ImageDigest?: string & =~"^[Ss][Hh][Aa]256:[0-9a-fA-F]{64}$" & strings.MaxRunes(72)
	IsCheckpoint?: bool
	ModelInput?: #ModelInput
	NearestModelName?: string
}

#ParameterRange: {
	CategoricalParameterRangeSpecification?: #CategoricalParameterRangeSpecification
	ContinuousParameterRangeSpecification?: #ContinuousParameterRangeSpecification
	IntegerParameterRangeSpecification?: #IntegerParameterRangeSpecification
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TrainingSpecification: {
	MetricDefinitions?: [...#MetricDefinition]
	SupportedHyperParameters?: [...#HyperParameterSpecification]
	SupportedTrainingInstanceTypes: [...string]
	SupportedTuningJobObjectiveMetrics?: [...#HyperParameterTuningJobObjective]
	SupportsDistributedTraining?: bool
	TrainingChannels: [...#ChannelSpecification]
	TrainingImage: string & strings.MaxRunes(255)
	TrainingImageDigest?: string & =~"^[Ss][Hh][Aa]256:[0-9a-fA-F]{64}$" & strings.MaxRunes(72)
}
