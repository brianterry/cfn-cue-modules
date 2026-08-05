package computeenvironment

#Properties: {
	ComputeEnvironmentName?: string
	Context?: string
	EksConfiguration?: #EksConfiguration
	ReplaceComputeEnvironment?: bool
	ServiceRole?: string
	State?: string
	// A key-value pair to associate with a resource.
	Tags?: {...}
	Type: string
	UnmanagedvCpus?: int
	UpdatePolicy?: #UpdatePolicy
}

#ComputeResources: {
	AllocationStrategy?: string
	BidPercentage?: int
	DesiredvCpus?: int
	Ec2Configuration?: [...#Ec2ConfigurationObject]
	Ec2KeyPair?: string
	ImageId?: string
	InstanceRole?: string
	InstanceTypes?: [...string]
	LaunchTemplate?: #LaunchTemplateSpecification
	MaxvCpus: int
	MinvCpus?: int
	PlacementGroup?: string
	ScalingPolicy?: #ComputeScalingPolicy
	SecurityGroupIds?: [...string]
	SpotIamFleetRole?: string
	Subnets: [...string]
	// A key-value pair to associate with a resource.
	Tags?: {...}
	Type: string
	UpdateToLatestImageVersion?: bool
}

#ComputeScalingPolicy: {
	MinScaleDownDelayMinutes?: int
}

#Ec2ConfigurationObject: {
	BatchImageStatus?: string
	ImageIdOverride?: string
	ImageKubernetesVersion?: string
	ImageType: string
}

#EksConfiguration: {
	EksClusterArn: string
	KubernetesNamespace: string
}

#LaunchTemplateSpecification: {
	LaunchTemplateId?: string
	LaunchTemplateName?: string
	Overrides?: [...#LaunchTemplateSpecificationOverride]
	UserdataType?: "EKS_BOOTSTRAP_SH" | "EKS_NODEADM"
	Version?: string
}

#LaunchTemplateSpecificationOverride: {
	LaunchTemplateId?: string
	LaunchTemplateName?: string
	TargetInstanceTypes?: [...string]
	UserdataType?: "EKS_BOOTSTRAP_SH" | "EKS_NODEADM"
	Version?: string
}

#UpdatePolicy: {
	JobExecutionTimeoutMinutes?: int
	TerminateJobsOnUpdate?: bool
}
