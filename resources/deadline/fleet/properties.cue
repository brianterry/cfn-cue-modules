package fleet

import "strings"

#Properties: {
	Configuration: #FleetConfiguration
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(100)
	DisplayName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	FarmId: string & =~"^farm-[0-9a-f]{32}$"
	HostConfiguration?: #HostConfiguration
	MaxWorkerCount: int & >=0 & <=2147483647
	MinWorkerCount?: int & >=0 & <=2147483647
	RoleArn: string & =~"^arn:(aws[a-zA-Z-]*):iam::\\d{12}:role(/[!-.0-~]+)*/[\\w+=,.@-]+$"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AcceleratorCapabilities: {
	Count?: #AcceleratorCountRange
	Selections: [...#AcceleratorSelection]
}

#AcceleratorCountRange: {
	Max?: int & >=0 & <=2147483647
	Min: int & >=0 & <=2147483647
}

#AcceleratorSelection: {
	Name: "t4" | "a10g" | "l4" | "l40s" | "rtx-pro-server-6000"
	Runtime?: string & strings.MinRunes(1) & strings.MaxRunes(100)
}

#AcceleratorTotalMemoryMiBRange: {
	Max?: int & >=0 & <=2147483647
	Min: int & >=0 & <=2147483647
}

#AcceleratorType: "gpu"

#AutoScalingMode: "NO_SCALING" | "EVENT_BASED_AUTO_SCALING"

#CpuArchitectureType: "x86_64" | "arm64"

#CustomerManagedAutoScalingConfiguration: {
	ScaleOutWorkersPerMinute?: int & >=1 & <=2147483647
	StandbyWorkerCount?: int & >=0 & <=2147483647
	WorkerIdleDurationSeconds?: int & >=0 & <=2147483647
}

#CustomerManagedFleetConfiguration: {
	AutoScalingConfiguration?: #CustomerManagedAutoScalingConfiguration
	Mode: #AutoScalingMode
	StorageProfileId?: string & =~"^sp-[0-9a-f]{32}$"
	TagPropagationMode?: #TagPropagationMode
	WorkerCapabilities: #CustomerManagedWorkerCapabilities
}

#CustomerManagedFleetOperatingSystemFamily: "WINDOWS" | "LINUX" | "MACOS"

#CustomerManagedWorkerCapabilities: {
	AcceleratorCount?: #AcceleratorCountRange
	AcceleratorTotalMemoryMiB?: #AcceleratorTotalMemoryMiBRange
	AcceleratorTypes?: [...#AcceleratorType]
	CpuArchitectureType: #CpuArchitectureType
	CustomAmounts?: [...#FleetAmountCapability]
	CustomAttributes?: [...#FleetAttributeCapability]
	MemoryMiB: #MemoryMiBRange
	OsFamily: #CustomerManagedFleetOperatingSystemFamily
	VCpuCount: #VCpuCountRange
}

#Ec2EbsVolume: {
	Iops?: int & >=3000 & <=16000
	SizeGiB?: int
	ThroughputMiB?: int & >=125 & <=1000
}

#Ec2MarketType: "on-demand" | "spot" | "wait-and-save"

#FleetAmountCapability: {
	Max?: number
	Min: number
	Name: string & =~"^([a-zA-Z][a-zA-Z0-9]{0,63}:)?amount(\\.[a-zA-Z][a-zA-Z0-9]{0,63})+$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#FleetAttributeCapability: {
	Name: string & =~"^([a-zA-Z][a-zA-Z0-9]{0,63}:)?attr(\\.[a-zA-Z][a-zA-Z0-9]{0,63})+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Values: [...string & =~"^[a-zA-Z_]([a-zA-Z0-9_\\-]{0,99})$" & strings.MinRunes(1) & strings.MaxRunes(100)]
}

#FleetCapabilities: {
	Amounts?: [...#FleetAmountCapability]
	Attributes?: [...#FleetAttributeCapability]
}

#FleetConfiguration: {
	CustomerManaged: #CustomerManagedFleetConfiguration
} | {
	ServiceManagedEc2: #ServiceManagedEc2FleetConfiguration
}

#FleetStatus: "ACTIVE" | "CREATE_IN_PROGRESS" | "UPDATE_IN_PROGRESS" | "CREATE_FAILED" | "UPDATE_FAILED" | "SUSPENDED"

#HostConfiguration: {
	ScriptBody: string & strings.MinRunes(0) & strings.MaxRunes(15000)
	ScriptTimeoutSeconds?: int & >=300 & <=3600
}

#MemoryMiBRange: {
	Max?: int & >=512 & <=2147483647
	Min: int & >=512 & <=2147483647
}

#PersistentVolumeConfiguration: {
	Iops?: int & >=100 & <=80000
	LastUsedTtlHours?: int & >=1 & <=8760
	MountPath: string & strings.MinRunes(1) & strings.MaxRunes(255)
	SizeGiB?: int & >=1 & <=65536
	ThroughputMiB?: int & >=125 & <=2000
}

#ServiceManagedEc2AutoScalingConfiguration: {
	ScaleOutWorkersPerMinute?: int & >=1 & <=2147483647
	StandbyWorkerCount?: int & >=0 & <=2147483647
	WorkerIdleDurationSeconds?: int & >=0 & <=86400
}

#ServiceManagedEc2FleetConfiguration: {
	AutoScalingConfiguration?: #ServiceManagedEc2AutoScalingConfiguration
	InstanceCapabilities: #ServiceManagedEc2InstanceCapabilities
	InstanceMarketOptions: #ServiceManagedEc2InstanceMarketOptions
	PersistentVolumeConfiguration?: #PersistentVolumeConfiguration
	StorageProfileId?: string & =~"^sp-[0-9a-f]{32}$"
	VpcConfiguration?: #VpcConfiguration
}

#ServiceManagedEc2InstanceCapabilities: {
	AcceleratorCapabilities?: #AcceleratorCapabilities
	AllowedInstanceTypes?: [...string & strings.MinRunes(1) & strings.MaxRunes(100)]
	CpuArchitectureType: #CpuArchitectureType
	CustomAmounts?: [...#FleetAmountCapability]
	CustomAttributes?: [...#FleetAttributeCapability]
	ExcludedInstanceTypes?: [...string & strings.MinRunes(1) & strings.MaxRunes(100)]
	MemoryMiB: #MemoryMiBRange
	OsFamily: #ServiceManagedFleetOperatingSystemFamily
	RootEbsVolume?: #Ec2EbsVolume
	VCpuCount: #VCpuCountRange
}

#ServiceManagedEc2InstanceMarketOptions: {
	Type: #Ec2MarketType
}

#ServiceManagedFleetOperatingSystemFamily: "LINUX" | "WINDOWS"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#TagPropagationMode: "NO_PROPAGATION" | "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH"

#VCpuCountRange: {
	Max?: int & >=1 & <=10000
	Min: int & >=1 & <=10000
}

#VpcConfiguration: {
	ResourceConfigurationArns?: [...string & strings.MinRunes(1) & strings.MaxRunes(2048)]
}
