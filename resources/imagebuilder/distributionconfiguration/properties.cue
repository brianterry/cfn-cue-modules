package distributionconfiguration

#Properties: {
	// The description of the distribution configuration.
	Description?: string
	// The distributions of the distribution configuration.
	Distributions: [...#Distribution]
	// The name of the distribution configuration.
	Name: string
	// The tags associated with the component.
	Tags?: {...}
}

#AmiDistributionConfiguration: {
	// The tags to apply to AMIs distributed to this Region.
	AmiTags?: {...}
	// The description of the AMI distribution configuration.
	Description?: string
	// The KMS key identifier used to encrypt the distributed image.
	KmsKeyId?: string
	LaunchPermissionConfiguration?: #LaunchPermissionConfiguration
	// The name of the AMI distribution configuration.
	Name?: string
	// The ID of accounts to which you want to distribute an image.
	TargetAccountIds?: [...string]
}

#ContainerDistributionConfiguration: {
	// Tags that are attached to the container distribution configuration.
	ContainerTags?: [...string]
	// The description of the container distribution configuration.
	Description?: string
	// The destination repository for the container distribution configuration.
	TargetRepository?: #TargetContainerRepository
}

#Distribution: {
	AmiDistributionConfiguration?: #AmiDistributionConfiguration
	ContainerDistributionConfiguration?: #ContainerDistributionConfiguration
	// The Windows faster-launching configurations to use for AMI distribution.
	FastLaunchConfigurations?: [...#FastLaunchConfiguration]
	// A group of launchTemplateConfiguration settings that apply to image distribution.
	LaunchTemplateConfigurations?: [...#LaunchTemplateConfiguration]
	// The License Manager Configuration to associate with the AMI in the specified Region.
	LicenseConfigurationArns?: [...#LicenseConfigurationArn]
	// region
	Region: string
	// The SSM parameter configurations to use for AMI distribution.
	SsmParameterConfigurations?: [...#SsmParameterConfiguration]
}

#FastLaunchConfiguration: {
	// The owner account ID for the fast-launch enabled Windows AMI.
	AccountId?: string
	// A Boolean that represents the current state of faster launching for the Windows AMI. Set to true to start using Windows faster launching, or false to stop using it.
	Enabled?: bool
	// The launch template that the fast-launch enabled Windows AMI uses when it launches Windows instances to create pre-provisioned snapshots.
	LaunchTemplate?: #FastLaunchLaunchTemplateSpecification
	// The maximum number of parallel instances that are launched for creating resources.
	MaxParallelLaunches?: int
	// Configuration settings for managing the number of snapshots that are created from pre-provisioned instances for the Windows AMI when faster launching is enabled.
	SnapshotConfiguration?: #FastLaunchSnapshotConfiguration
}

#FastLaunchLaunchTemplateSpecification: {
	// The ID of the launch template to use for faster launching for a Windows AMI.
	LaunchTemplateId?: string
	// The name of the launch template to use for faster launching for a Windows AMI.
	LaunchTemplateName?: string
	// The version of the launch template to use for faster launching for a Windows AMI.
	LaunchTemplateVersion?: string
}

#FastLaunchSnapshotConfiguration: {
	// The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled Windows AMI.
	TargetResourceCount?: int
}

#LaunchPermissionConfiguration: {
	// The ARN for an Amazon Web Services Organization that you want to share your AMI with.
	OrganizationArns?: [...string]
	// The ARN for an Organizations organizational unit (OU) that you want to share your AMI with.
	OrganizationalUnitArns?: [...string]
	// The name of the group.
	UserGroups?: [...string]
	// The AWS account ID.
	UserIds?: [...string]
}

#LaunchTemplateConfiguration: {
	// The account ID that this configuration applies to.
	AccountId?: string
	// Identifies the EC2 launch template to use.
	LaunchTemplateId?: string
	// Set the specified EC2 launch template as the default launch template for the specified account.
	SetDefaultVersion?: bool
}

#LicenseConfigurationArn: string

#SsmParameterConfiguration: {
	// The account ID for the AMI to update the parameter with.
	AmiAccountId?: string
	// The data type of the SSM parameter.
	DataType?: "text" | "aws:ec2:image"
	// The name of the SSM parameter.
	ParameterName: string
}

#TargetContainerRepository: {
	// The repository name of target container repository.
	RepositoryName?: string
	// The service of target container repository.
	Service?: "ECR"
}
