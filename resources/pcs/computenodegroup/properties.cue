package computenodegroup

import "strings"

#Properties: {
	// The ID of the Amazon Machine Image (AMI) that AWS PCS uses to launch instances. If not provided, AWS PCS uses the AMI ID specified in the custom launch template.
	AmiId?: string & =~"^ami-[a-z0-9]+$"
	// The ID of the cluster of the compute node group.
	ClusterId: string
	// An Amazon EC2 launch template AWS PCS uses to launch compute nodes.
	CustomLaunchTemplate: {
		TemplateId?: string
		Version: string
	}
	// The Amazon Resource Name (ARN) of the IAM instance profile used to pass an IAM role when launching EC2 instances. The role contained in your instance profile must have pcs:RegisterComputeNodeGroupInstance permissions attached to provision instances correctly.
	IamInstanceProfileArn: string & =~"^arn:aws([a-zA-Z-]{0,10})?:iam::[0-9]{12}:instance-profile/.{1,128}$"
	// A list of EC2 instance configurations that AWS PCS can provision in the compute node group.
	InstanceConfigs: [...#InstanceConfig]
	// The name that identifies the compute node group.
	Name?: string
	NodeLifecycleActions?: #NodeLifecycleActions
	// Specifies how EC2 instances are purchased on your behalf. AWS PCS supports On-Demand, Spot, Capacity Block, and Interruptible Capacity Reservation instances. For more information, see Instance purchasing options in the Amazon Elastic Compute Cloud User Guide. If you don't provide this option, it defaults to On-Demand.
	PurchaseOption?: "ONDEMAND" | "SPOT" | "CAPACITY_BLOCK" | "INTERRUPTIBLE_CAPACITY_RESERVATION"
	// Specifies the boundaries of the compute node group auto scaling.
	ScalingConfiguration: {
		MaxInstanceCount: int & >=0
		MinInstanceCount: int & >=0
	}
	// Additional options related to the Slurm scheduler.
	SlurmConfiguration?: {
		ScaleDownIdleTimeInSeconds?: int & >=1 & <=10000000
		SlurmCustomSettings?: [...#SlurmCustomSetting]
	}
	// Additional configuration when you specify SPOT as the purchase option.
	SpotOptions?: {
		AllocationStrategy?: "lowest-price" | "capacity-optimized" | "price-capacity-optimized"
	}
	// The list of subnet IDs where instances are provisioned by the compute node group. The subnets must be in the same VPC as the cluster.
	SubnetIds: [...#SubnetId]
	// 1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.
	Tags?: string
}

#ErrorInfo: {
	// The short-form error code.
	Code?: string
	// The detailed error information.
	Message?: string
}

#InstanceConfig: {
	// The EC2 instance type that AWS PCS can provision in the compute node group.
	InstanceType?: string
}

#NodeLifecycleActions: {
	// Controls whether lifecycle scripts are downloaded once at first boot (CACHE_ONCE) or re-downloaded on every reboot (REFRESH_ON_REBOOT). Defaults to CACHE_ONCE.
	ScriptCachingPolicy?: "CACHE_ONCE" | "REFRESH_ON_REBOOT"
	Stages: #NodeLifecycleStages
}

#NodeLifecycleScript: {
	// An ordered list of arguments passed to the script.
	Arguments?: [...string & strings.MaxRunes(256)]
	// Whether the script runs only on the node's first boot (FIRST_BOOT_ONLY) or on every boot including reboots (EVERY_BOOT). Defaults to FIRST_BOOT_ONLY.
	ExecutionPolicy?: "FIRST_BOOT_ONLY" | "EVERY_BOOT"
	// A human-readable name that identifies the script.
	Name: string & =~"^[A-Za-z0-9][A-Za-z0-9 _-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The behavior when the script exits with an error. Defaults to TERMINATE.
	OnError?: "TERMINATE" | "STOP_SEQUENCE" | "CONTINUE"
	ScriptSource: #ScriptSource
}

#NodeLifecycleStages: {
	// Scripts to run after the node is bootstrapped, once the PCS configuration phase completes and before slurmd starts.
	NodeBootstrapped?: [...#NodeLifecycleScript]
	// Scripts to execute when the node becomes ready (every boot).
	NodeReady?: [...#NodeLifecycleScript]
}

#ScriptSource: {
	// A 64-character hexadecimal SHA-256 digest used to verify script integrity.
	Checksum?: string & =~"^[a-fA-F0-9]{64}$" & strings.MinRunes(64) & strings.MaxRunes(64)
	// The S3 object version ID of the script, when stored in a versioned bucket.
	S3VersionId?: string & strings.MaxRunes(1024)
	// The S3 URI or HTTPS URL where the script is stored.
	ScriptLocation: string & =~"^(s3://[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]/.+|https://.+)$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#SlurmCustomSetting: {
	// AWS PCS supports configuration of the following Slurm parameters for compute node groups: Weight and RealMemory.
	ParameterName: string
	// The value for the configured Slurm setting.
	ParameterValue: string
}

#SubnetId: string
