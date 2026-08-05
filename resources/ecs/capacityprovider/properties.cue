package capacityprovider

import "strings"

#Properties: {
	AutoScalingGroupProvider?: #AutoScalingGroupProvider
	ClusterName?: string
	ManagedInstancesProvider?: #ManagedInstancesProvider
	Name?: string
	Tags?: [...#Tag]
}

#AcceleratorCountRequest: {
	Max?: int
	Min?: int
}

#AcceleratorTotalMemoryMiBRequest: {
	Max?: int
	Min?: int
}

#AutoRepairConfiguration: {
	ActionsStatus?: "ENABLED" | "DISABLED"
}

#AutoScalingGroupProvider: {
	AutoScalingGroupArn: string
	ManagedDraining?: "DISABLED" | "ENABLED"
	ManagedScaling?: #ManagedScaling
	ManagedTerminationProtection?: "DISABLED" | "ENABLED"
}

#BaselineEbsBandwidthMbpsRequest: {
	Max?: int
	Min?: int
}

#CapacityReservationRequest: {
	ReservationGroupArn?: string
	ReservationPreference?: "RESERVATIONS_ONLY" | "RESERVATIONS_FIRST" | "RESERVATIONS_EXCLUDED"
}

#InstanceLaunchTemplate: {
	CapacityOptionType?: "ON_DEMAND" | "SPOT" | "RESERVED"
	CapacityReservations?: #CapacityReservationRequest
	Ec2InstanceProfileArn: string
	FipsEnabled?: bool
	InstanceMetadataTagsPropagation?: bool
	InstanceRequirements?: #InstanceRequirementsRequest
	LocalStorageConfiguration?: #ManagedInstancesLocalStorageConfiguration
	Monitoring?: #ManagedInstancesMonitoringOptions
	NetworkConfiguration: #ManagedInstancesNetworkConfiguration
	StorageConfiguration?: #ManagedInstancesStorageConfiguration
}

#InstanceRequirementsRequest: {
	AcceleratorCount?: #AcceleratorCountRequest
	AcceleratorManufacturers?: [..."amazon-web-services" | "amd" | "habana" | "nvidia" | "xilinx"]
	AcceleratorNames?: [..."a10g" | "a100" | "h100" | "inferentia" | "k520" | "k80" | "m60" | "radeon-pro-v520" | "t4" | "t4g" | "vu9p" | "v100" | "l40s" | "l4" | "gaudi-hl-205" | "inferentia2" | "trainium" | "trainium2" | "u30"]
	AcceleratorTotalMemoryMiB?: #AcceleratorTotalMemoryMiBRequest
	AcceleratorTypes?: [..."gpu" | "fpga" | "inference"]
	AllowedInstanceTypes?: [...string & =~"[a-zA-Z0-9\\.\\*]+" & strings.MinRunes(1) & strings.MaxRunes(30)]
	BareMetal?: "included" | "required" | "excluded"
	BaselineEbsBandwidthMbps?: #BaselineEbsBandwidthMbpsRequest
	BurstablePerformance?: "included" | "required" | "excluded"
	CpuManufacturers?: [..."intel" | "amd" | "amazon-web-services"]
	ExcludedInstanceTypes?: [...string & =~"[a-zA-Z0-9\\.\\*]+" & strings.MinRunes(1) & strings.MaxRunes(30)]
	InstanceGenerations?: [..."current" | "previous"]
	LocalStorage?: "included" | "required" | "excluded"
	LocalStorageTypes?: [..."hdd" | "ssd"]
	MaxSpotPriceAsPercentageOfOptimalOnDemandPrice?: int
	MemoryGiBPerVCpu?: #MemoryGiBPerVCpuRequest
	MemoryMiB: #MemoryMiBRequest
	NetworkBandwidthGbps?: #NetworkBandwidthGbpsRequest
	NetworkInterfaceCount?: #NetworkInterfaceCountRequest
	OnDemandMaxPricePercentageOverLowestPrice?: int
	RequireHibernateSupport?: bool
	SpotMaxPricePercentageOverLowestPrice?: int
	TotalLocalStorageGB?: #TotalLocalStorageGBRequest
	VCpuCount: #VCpuCountRangeRequest
}

#ManagedInstancesLocalStorageConfiguration: {
	UseLocalStorage?: bool
}

#ManagedInstancesNetworkConfiguration: {
	SecurityGroups: [...string]
	Subnets: [...string]
}

#ManagedInstancesProvider: {
	AutoRepairConfiguration?: #AutoRepairConfiguration
	// Defines how Amazon ECS Managed Instances optimizes the infrastructure in your capacity provider. Configure it to turn on or off the infrastructure optimization in your capacity provider, and to control the idle EC2 instances optimization delay.
	InfrastructureOptimization?: {
		ScaleInAfter?: int & >=-1 & <=3600
	}
	InfrastructureRoleArn: string
	InstanceLaunchTemplate: #InstanceLaunchTemplate
	PropagateTags?: "CAPACITY_PROVIDER" | "NONE"
}

#ManagedInstancesStorageConfiguration: {
	StorageSizeGiB: int
}

#ManagedScaling: {
	InstanceWarmupPeriod?: int
	MaximumScalingStepSize?: int
	MinimumScalingStepSize?: int
	Status?: "DISABLED" | "ENABLED"
	TargetCapacity?: int
}

#MemoryGiBPerVCpuRequest: {
	Max?: number
	Min?: number
}

#MemoryMiBRequest: {
	Max?: int
	Min: int
}

#NetworkBandwidthGbpsRequest: {
	Max?: number
	Min?: number
}

#NetworkInterfaceCountRequest: {
	Max?: int
	Min?: int
}

#Tag: {
	Key?: string & strings.MinRunes(1)
	Value?: string & strings.MinRunes(1)
}

#TotalLocalStorageGBRequest: {
	Max?: number
	Min?: number
}

#VCpuCountRangeRequest: {
	Max?: int
	Min: int
}
