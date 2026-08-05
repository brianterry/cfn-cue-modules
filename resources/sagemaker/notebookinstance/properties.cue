package notebookinstance

#Properties: {
	AcceleratorTypes?: [...string]
	AdditionalCodeRepositories?: [...string]
	DefaultCodeRepository?: string
	DirectInternetAccess?: string
	InstanceMetadataServiceConfiguration?: #InstanceMetadataServiceConfiguration
	InstanceType: string
	KmsKeyId?: string
	LifecycleConfigName?: string
	NotebookInstanceName?: string
	PlatformIdentifier?: string
	RoleArn: string
	RootAccess?: string
	SecurityGroupIds?: [...string]
	SubnetId?: string
	Tags?: [...#Tag]
	VolumeSizeInGB?: int
}

#InstanceMetadataServiceConfiguration: {
	MinimumInstanceMetadataServiceVersion: string
}

#Tag: {
	Key: string
	Value: string
}
