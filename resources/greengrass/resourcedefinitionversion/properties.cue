package resourcedefinitionversion

#Properties: {
	ResourceDefinitionId: string
	Resources: [...#ResourceInstance]
}

#GroupOwnerSetting: {
	AutoAddGroupOwner: bool
	GroupOwner?: string
}

#LocalDeviceResourceData: {
	GroupOwnerSetting?: #GroupOwnerSetting
	SourcePath: string
}

#LocalVolumeResourceData: {
	DestinationPath: string
	GroupOwnerSetting?: #GroupOwnerSetting
	SourcePath: string
}

#ResourceDataContainer: {
	LocalDeviceResourceData?: #LocalDeviceResourceData
	LocalVolumeResourceData?: #LocalVolumeResourceData
	S3MachineLearningModelResourceData?: #S3MachineLearningModelResourceData
	SageMakerMachineLearningModelResourceData?: #SageMakerMachineLearningModelResourceData
	SecretsManagerSecretResourceData?: #SecretsManagerSecretResourceData
}

#ResourceDownloadOwnerSetting: {
	GroupOwner: string
	GroupPermission: string
}

#ResourceInstance: {
	Id: string
	Name: string
	ResourceDataContainer: #ResourceDataContainer
}

#S3MachineLearningModelResourceData: {
	DestinationPath: string
	OwnerSetting?: #ResourceDownloadOwnerSetting
	S3Uri: string
}

#SageMakerMachineLearningModelResourceData: {
	DestinationPath: string
	OwnerSetting?: #ResourceDownloadOwnerSetting
	SageMakerJobArn: string
}

#SecretsManagerSecretResourceData: {
	ARN: string
	AdditionalStagingLabelsToDownload?: [...string]
}
