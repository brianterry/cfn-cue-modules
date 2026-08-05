package imagerecipe

#Properties: {
	// Specify additional settings and launch scripts for your build instances.
	AdditionalInstanceConfiguration?: #AdditionalInstanceConfiguration
	// The tags to apply to the AMI created by this image recipe.
	AmiTags?: {...}
	// The AMI watermark names to attach to the output AMI from this recipe. AMI watermarks are lineage markers that automatically propagate to derivative AMIs when the source AMI is copied or distributed.
	AmiWatermarks?: [...string & =~"^[A-Za-z0-9()\\[\\]./'@_\\-][A-Za-z0-9 ()\\[\\]./'@_\\-]{1,126}[A-Za-z0-9()\\[\\]./'@_\\-]$" & strings.MinRunes(3) & strings.MaxRunes(128)]
	// The block device mappings to apply when creating images from this recipe.
	BlockDeviceMappings?: [...#InstanceBlockDeviceMapping]
	// The components of the image recipe.
	Components?: [...#ComponentConfiguration]
	// The description of the image recipe.
	Description?: string
	// The name of the image recipe.
	Name: string
	// The parent image of the image recipe.
	ParentImage: string
	// The tags of the image recipe.
	Tags?: {...}
	// The version of the image recipe.
	Version: string
	// The working directory to be used during build and test workflows.
	WorkingDirectory?: string
}

#AdditionalInstanceConfiguration: {
	// Contains settings for the SSM agent on your build instance.
	SystemsManagerAgent?: #SystemsManagerAgent
	// Use this property to provide commands or a command script to run when you launch your build instance.
	UserDataOverride?: string
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

#LatestVersion: {
	// The latest version ARN of the created image recipe.
	Arn?: string
	// The latest version ARN of the created image recipe, with the same major version.
	Major?: string
	// The latest version ARN of the created image recipe, with the same minor version.
	Minor?: string
	// The latest version ARN of the created image recipe, with the same patch version.
	Patch?: string
}

#SystemsManagerAgent: {
	// Controls whether the SSM agent is removed from your final build image, prior to creating the new AMI. If this is set to true, then the agent is removed from the final image. If it's set to false, then the agent is left in, so that it is included in the new AMI. The default value is false.
	UninstallAfterBuild?: bool
}
