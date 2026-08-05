package containerrecipe

#Properties: {
	// Components for build and test that are included in the container recipe.
	Components?: [...#ComponentConfiguration]
	// Specifies the type of container, such as Docker.
	ContainerType?: "DOCKER"
	// The description of the container recipe.
	Description?: string
	// Dockerfiles are text documents that are used to build Docker containers, and ensure that they contain all of the elements required by the application running inside. The template data consists of contextual variables where Image Builder places build information or scripts, based on your container image recipe.
	DockerfileTemplateData?: string
	// The S3 URI for the Dockerfile that will be used to build your container image.
	DockerfileTemplateUri?: string
	// Specifies the operating system version for the source image.
	ImageOsVersionOverride?: string
	// A group of options that can be used to configure an instance for building and testing container images.
	InstanceConfiguration?: #InstanceConfiguration
	// Identifies which KMS key is used to encrypt the container image.
	KmsKeyId?: string
	// The name of the container recipe.
	Name?: string
	// The source image for the container recipe.
	ParentImage?: string
	// Specifies the operating system platform when you use a custom source image.
	PlatformOverride?: "Windows" | "Linux"
	// Tags that are attached to the container recipe.
	Tags?: {...}
	// The destination repository for the container image.
	TargetRepository?: #TargetContainerRepository
	// The semantic version of the container recipe (<major>.<minor>.<patch>).
	Version?: string
	// The working directory to be used during build and test workflows.
	WorkingDirectory?: string
}

#ComponentConfiguration: {
	// The Amazon Resource Name (ARN) of the component.
	ComponentArn?: string
	// A group of parameter settings that are used to configure the component for a specific recipe.
	Parameters?: [...#ComponentParameter]
}

#ComponentParameter: {
	// The name of the component parameter to set.
	Name: string
	// Sets the value for the named component parameter.
	Value: [...string]
}

#EbsInstanceBlockDeviceSpecification: {
	// Use to configure delete on termination of the associated device.
	DeleteOnTermination?: bool
	// Use to configure device encryption.
	Encrypted?: bool
	// Use to configure device IOPS.
	Iops?: int
	// Use to configure the KMS key to use when encrypting the device.
	KmsKeyId?: string
	// The snapshot that defines the device contents.
	SnapshotId?: string
	// For GP3 volumes only - The throughput in MiB/s that the volume supports.
	Throughput?: int
	// Use to override the device's volume size.
	VolumeSize?: int
	// Use to override the device's volume type.
	VolumeType?: "standard" | "io1" | "io2" | "io2a" | "gp2" | "gp3" | "gp3a" | "sc1" | "st1"
}

#InstanceBlockDeviceMapping: {
	// The device to which these mappings apply.
	DeviceName?: string
	// Use to manage Amazon EBS-specific configuration for this mapping.
	Ebs?: #EbsInstanceBlockDeviceSpecification
	// Use to remove a mapping from the parent image.
	NoDevice?: string
	// Use to manage instance ephemeral devices.
	VirtualName?: string
}

#InstanceConfiguration: {
	// Defines the block devices to attach for building an instance from this Image Builder AMI.
	BlockDeviceMappings?: [...#InstanceBlockDeviceMapping]
	// The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.
	Image?: string
}

#LatestVersion: {
	// The latest version ARN of the created container recipe.
	Arn?: string
	// The latest version ARN of the created container recipe, with the same major version.
	Major?: string
	// The latest version ARN of the created container recipe, with the same minor version.
	Minor?: string
	// The latest version ARN of the created container recipe, with the same patch version.
	Patch?: string
}

#TargetContainerRepository: {
	// The name of the container repository where the output container image is stored. This name is prefixed by the repository location.
	RepositoryName?: string
	// Specifies the service in which this image was registered.
	Service?: "ECR"
}
