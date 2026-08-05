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

#BaseInferenceComponentName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MaxRunes(63)

#CapacitySizeValue: int

#ContainerImage: string & =~"[\\S]+" & strings.MaxRunes(255)

#DeployedImage: {
	ResolutionTime?: #Timestamp
	ResolvedImage?: #ContainerImage
	SpecifiedImage?: #ContainerImage
}

#EndpointArn: string & strings.MinRunes(1) & strings.MaxRunes(256)

#EndpointName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MaxRunes(63)

#EnvironmentMap: {...}

#FailureReason: string & strings.MaxRunes(63)

#InferenceComponentArn: string & strings.MinRunes(1) & strings.MaxRunes(256)

#InferenceComponentCapacitySize: {
	Type: #InferenceComponentCapacitySizeType
	Value: #CapacitySizeValue
}

#InferenceComponentCapacitySizeType: "COPY_COUNT" | "CAPACITY_PERCENT"

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

#InferenceComponentCopyCount: int & >=0

#InferenceComponentDeploymentConfig: {
	AutoRollbackConfiguration?: #AutoRollbackConfiguration
	RollingUpdatePolicy?: #InferenceComponentRollingUpdatePolicy
}

#InferenceComponentName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MaxRunes(63)

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

#InferenceComponentStatus: "InService" | "Creating" | "Updating" | "Failed" | "Deleting"

#MaximumExecutionTimeoutInSeconds: int & >=600 & <=28800

#MemoryInMb: int & >=128

#ModelName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MaxRunes(63)

#NumberOfAcceleratorDevices: number & >=1

#NumberOfCpuCores: number & >=0.25

#StartupParameterTimeoutInSeconds: int & >=60 & <=3600

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TagList: [...#Tag]

#Timestamp: string

#Url: string & =~"^(https|s3)://([^/]+)/?(.*)$" & strings.MaxRunes(1024)

#VariantName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MaxRunes(63)

#WaitIntervalInSeconds: int & >=0 & <=3600
