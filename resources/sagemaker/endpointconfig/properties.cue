package endpointconfig

#Properties: {
	AsyncInferenceConfig?: #AsyncInferenceConfig
	DataCaptureConfig?: #DataCaptureConfig
	EnableNetworkIsolation?: bool
	EndpointConfigName?: string
	ExecutionRoleArn?: string
	ExplainerConfig?: #ExplainerConfig
	KmsKeyId?: string
	ProductionVariants: [...#ProductionVariant]
	ShadowProductionVariants?: [...#ProductionVariant]
	Tags?: [...#Tag]
	VpcConfig?: #VpcConfig
}

#AsyncInferenceClientConfig: {
	MaxConcurrentInvocationsPerInstance?: int
}

#AsyncInferenceConfig: {
	ClientConfig?: #AsyncInferenceClientConfig
	OutputConfig: #AsyncInferenceOutputConfig
}

#AsyncInferenceNotificationConfig: {
	ErrorTopic?: string
	IncludeInferenceResponseIn?: [...string]
	SuccessTopic?: string
}

#AsyncInferenceOutputConfig: {
	KmsKeyId?: string
	NotificationConfig?: #AsyncInferenceNotificationConfig
	S3FailurePath?: string
	S3OutputPath?: string
}

#CapacityReservationConfig: {
	CapacityReservationPreference?: string
	MlReservationArn?: string
}

#CaptureContentTypeHeader: {
	CsvContentTypes?: [...string]
	JsonContentTypes?: [...string]
}

#CaptureOption: {
	CaptureMode: string
}

#ClarifyExplainerConfig: {
	EnableExplanations?: string
	InferenceConfig?: #ClarifyInferenceConfig
	ShapConfig: #ClarifyShapConfig
}

#ClarifyInferenceConfig: {
	ContentTemplate?: string
	FeatureHeaders?: [...#ClarifyHeader]
	FeatureTypes?: [...#ClarifyFeatureType]
	FeaturesAttribute?: string
	LabelAttribute?: string
	LabelHeaders?: [...#ClarifyHeader]
	LabelIndex?: int
	MaxPayloadInMB?: int
	MaxRecordCount?: int
	ProbabilityAttribute?: string
	ProbabilityIndex?: int
}

#ClarifyShapBaselineConfig: {
	MimeType?: string
	ShapBaseline?: string
	ShapBaselineUri?: string
}

#ClarifyShapConfig: {
	NumberOfSamples?: int
	Seed?: int
	ShapBaselineConfig: #ClarifyShapBaselineConfig
	TextConfig?: #ClarifyTextConfig
	UseLogit?: bool
}

#ClarifyTextConfig: {
	Granularity: string
	Language: string
}

#DataCaptureConfig: {
	CaptureContentTypeHeader?: #CaptureContentTypeHeader
	CaptureOptions: [...#CaptureOption]
	DestinationS3Uri: string
	EnableCapture?: bool
	InitialSamplingPercentage: int
	KmsKeyId?: string
}

#ExplainerConfig: {
	ClarifyExplainerConfig?: #ClarifyExplainerConfig
}

#InstancePools: {
	InstanceType: string
	ModelNameOverride?: string
	Priority: int
}

#ManagedInstanceScaling: {
	MaxInstanceCount?: int
	MinInstanceCount?: int
	Status?: string
}

#ProductionVariant: {
	CapacityReservationConfig?: #CapacityReservationConfig
	ContainerStartupHealthCheckTimeoutInSeconds?: int
	EnableSSMAccess?: bool
	InferenceAmiVersion?: string
	InitialInstanceCount?: int
	InitialVariantWeight?: number
	InstancePools?: [...#InstancePools]
	InstanceType?: string
	ManagedInstanceScaling?: #ManagedInstanceScaling
	ModelDataDownloadTimeoutInSeconds?: int
	ModelName?: string
	RoutingConfig?: #RoutingConfig
	ServerlessConfig?: #ServerlessConfig
	VariantInstanceProvisionTimeoutInSeconds?: int
	VariantName: string
	VolumeSizeInGB?: int
}

#RoutingConfig: {
	RoutingStrategy?: string
}

#ServerlessConfig: {
	MaxConcurrency: int
	MemorySizeInMB: int
	ProvisionedConcurrency?: int
}

#Tag: {
	Key: string
	Value: string
}

#VpcConfig: {
	SecurityGroupIds: [...string]
	Subnets: [...string]
}
