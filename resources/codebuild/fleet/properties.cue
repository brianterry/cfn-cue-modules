package fleet

import "strings"

#Properties: {
	BaseCapacity?: int & >=0
	ComputeConfiguration?: #ComputeConfiguration
	ComputeType?: "BUILD_GENERAL1_SMALL" | "BUILD_GENERAL1_MEDIUM" | "BUILD_GENERAL1_LARGE" | "BUILD_GENERAL1_XLARGE" | "BUILD_GENERAL1_2XLARGE" | "ATTRIBUTE_BASED_COMPUTE" | "CUSTOM_INSTANCE_TYPE"
	EnvironmentType?: "WINDOWS_SERVER_2019_CONTAINER" | "WINDOWS_SERVER_2022_CONTAINER" | "LINUX_CONTAINER" | "LINUX_GPU_CONTAINER" | "ARM_CONTAINER" | "MAC_ARM" | "LINUX_EC2" | "ARM_EC2" | "WINDOWS_EC2"
	FleetProxyConfiguration?: #ProxyConfiguration
	FleetServiceRole?: string & =~"^(?:arn:)[a-zA-Z+-=,._:/@]+$"
	FleetVpcConfig?: #VpcConfig
	ImageId?: string & =~"^((aws/codebuild/([A-Za-z0-9._-]+|ami/[A-Za-z0-9._-]+):[A-Za-z0-9._-]+)|ami-[a-z0-9]{1,1020})$"
	Name?: string & strings.MinRunes(2) & strings.MaxRunes(128)
	OverflowBehavior?: "QUEUE" | "ON_DEMAND"
	ScalingConfiguration?: #ScalingConfigurationInput
	Tags?: [...#Tag]
}

#ComputeConfiguration: {
	disk?: int
	instanceType?: string
	machineType?: "GENERAL" | "NVME"
	memory?: int
	vCpu?: int
}

#FleetProxyRule: {
	Effect?: "ALLOW" | "DENY"
	Entities?: [...string]
	Type?: "DOMAIN" | "IP"
}

#ProxyConfiguration: {
	DefaultBehavior?: "ALLOW_ALL" | "DENY_ALL"
	OrderedProxyRules?: [...#FleetProxyRule]
}

#ScalingConfigurationInput: {
	MaxCapacity?: int & >=1
	ScalingType?: "TARGET_TRACKING_SCALING"
	TargetTrackingScalingConfigs?: [...#TargetTrackingScalingConfiguration]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 255 Unicode characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"[a-zA-Z+-=._:/]+$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TargetTrackingScalingConfiguration: {
	MetricType?: "FLEET_UTILIZATION_RATE"
	TargetValue?: number
}

#VpcConfig: {
	SecurityGroupIds?: [...string]
	Subnets?: [...string]
	VpcId?: string
}
