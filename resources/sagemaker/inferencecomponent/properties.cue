package inferencecomponent

import "strings"

#Properties: {
	DeploymentConfig?: #InferenceComponentDeploymentConfig
	EndpointArn?: #EndpointArn
	EndpointName: #EndpointName
	InferenceComponentName?: #InferenceComponentName
	Tags?: #TagList
	VariantName?: #VariantName
}

#Alarm: {
	AlarmName: string & =~"^(?!\\s*$).+" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#AutoRollbackConfiguration: {
	Alarms: [...#Alarm]
}

#DeployedImage: {
	ResolutionTime?: #Timestamp
	ResolvedImage?: #ContainerImage
	SpecifiedImage?: #ContainerImage
}

#InferenceComponentCapacitySize: {
	Type: #InferenceComponentCapacitySizeType
	Value: #CapacitySizeValue
}

#InferenceComponentComputeResourceRequirements: {
	MaxMemoryRequiredInMb?: #MemoryInMb
	MinMemoryRequiredInMb?: #MemoryInMb
	NumberOfAcceleratorDevicesRequired?: #NumberOfAcceleratorDevices
	NumberOfCpuCoresRequired?: #NumberOfCpuCores
}

#InferenceComponentContainerSpecification: {
	ArtifactUrl?: #Url
	DeployedImage?: #DeployedImage
	Environment?: #EnvironmentMap
	Image?: #ContainerImage
}

#InferenceComponentDeploymentConfig: {
	AutoRollbackConfiguration?: #AutoRollbackConfiguration
	RollingUpdatePolicy?: #InferenceComponentRollingUpdatePolicy
}

#InferenceComponentRollingUpdatePolicy: {
	MaximumBatchSize?: #InferenceComponentCapacitySize
	MaximumExecutionTimeoutInSeconds?: #MaximumExecutionTimeoutInSeconds
	RollbackMaximumBatchSize?: #InferenceComponentCapacitySize
	WaitIntervalInSeconds?: #WaitIntervalInSeconds
}

#InferenceComponentRuntimeConfig: {
	CopyCount?: #InferenceComponentCopyCount
	CurrentCopyCount?: #InferenceComponentCopyCount
	DesiredCopyCount?: #InferenceComponentCopyCount
}

#InferenceComponentSpecification: {
	BaseInferenceComponentName?: #BaseInferenceComponentName
	ComputeResourceRequirements?: #InferenceComponentComputeResourceRequirements
	Container?: #InferenceComponentContainerSpecification
	ModelName?: #ModelName
	StartupParameters?: #InferenceComponentStartupParameters
}

#InferenceComponentStartupParameters: {
	ContainerStartupHealthCheckTimeoutInSeconds?: #StartupParameterTimeoutInSeconds
	ModelDataDownloadTimeoutInSeconds?: #StartupParameterTimeoutInSeconds
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
