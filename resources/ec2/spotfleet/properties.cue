package spotfleet

import "strings"

#Properties: {
	SpotFleetRequestConfigData: #SpotFleetRequestConfigData
	// The tags to specify in SpotFleetRequestConfigData
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

#BaselineEbsBandwidthMbpsRequest: {
	Max?: int
	Min?: int
}

#BaselinePerformanceFactorsRequest: {
	Cpu?: #CpuPerformanceFactorRequest
}

#BlockDeviceMapping: {
	DeviceName: string
	Ebs?: #EbsBlockDevice
	NoDevice?: string
	VirtualName?: string
}

#ClassicLoadBalancer: {
	Name: string
}

#ClassicLoadBalancersConfig: {
	ClassicLoadBalancers: [...#ClassicLoadBalancer]
}

#CpuPerformanceFactorRequest: {
	References?: [...#PerformanceFactorReferenceRequest]
}

#EbsBlockDevice: {
	DeleteOnTermination?: bool
	Encrypted?: bool
	Iops?: int
	SnapshotId?: string
	VolumeSize?: int
	VolumeType?: "gp2" | "gp3" | "io1" | "io2" | "sc1" | "st1" | "standard"
}

#FleetLaunchTemplateSpecification: {
	LaunchTemplateId?: string
	LaunchTemplateName?: string & =~"[a-zA-Z0-9\\(\\)\\.\\-/_]+" & strings.MinRunes(3) & strings.MaxRunes(128)
	Version: string
}

#GroupIdentifier: {
	GroupId: string
}

#IamInstanceProfileSpecification: {
	Arn?: string
}

#InstanceIpv6Address: {
	Ipv6Address: string
}

#InstanceNetworkInterfaceSpecification: {
	AssociatePublicIpAddress?: bool
	DeleteOnTermination?: bool
	Description?: string
	DeviceIndex?: int
	Groups?: [...string]
	Ipv6AddressCount?: int
	Ipv6Addresses?: [...#InstanceIpv6Address]
	NetworkInterfaceId?: string
	PrivateIpAddresses?: [...#PrivateIpAddressSpecification]
	SecondaryPrivateIpAddressCount?: int
	SubnetId?: string
}

#InstanceRequirementsRequest: {
	AcceleratorCount?: #AcceleratorCountRequest
	AcceleratorManufacturers?: [..."amazon-web-services" | "amd" | "habana" | "nvidia" | "xilinx"]
	AcceleratorNames?: [..."a10g" | "a100" | "h100" | "inferentia" | "k520" | "k80" | "m60" | "radeon-pro-v520" | "t4" | "t4g" | "vu9p" | "v100" | "l40s" | "l4" | "gaudi-hl-205" | "inferentia2" | "trainium" | "trainium2" | "u30"]
	AcceleratorTotalMemoryMiB?: #AcceleratorTotalMemoryMiBRequest
	AcceleratorTypes?: [..."gpu" | "fpga" | "inference" | "media"]
	AllowedInstanceTypes?: [...string & =~"[a-zA-Z0-9\\.\\*]+" & strings.MinRunes(1) & strings.MaxRunes(30)]
	BareMetal?: "included" | "required" | "excluded"
	BaselineEbsBandwidthMbps?: #BaselineEbsBandwidthMbpsRequest
	BaselinePerformanceFactors?: #BaselinePerformanceFactorsRequest
	BurstablePerformance?: "included" | "required" | "excluded"
	CpuManufacturers?: [..."intel" | "amd" | "amazon-web-services" | "apple"]
	ExcludedInstanceTypes?: [...string & =~"[a-zA-Z0-9\\.\\*]+" & strings.MinRunes(1) & strings.MaxRunes(30)]
	InstanceGenerations?: [..."current" | "previous"]
	LocalStorage?: "included" | "required" | "excluded"
	LocalStorageTypes?: [..."hdd" | "ssd"]
	MaxSpotPriceAsPercentageOfOptimalOnDemandPrice?: int
	MemoryGiBPerVCpu?: #MemoryGiBPerVCpuRequest
	MemoryMiB?: #MemoryMiBRequest
	NetworkBandwidthGbps?: #NetworkBandwidthGbpsRequest
	NetworkInterfaceCount?: #NetworkInterfaceCountRequest
	OnDemandMaxPricePercentageOverLowestPrice?: int
	RequireEncryptionInTransit?: bool
	RequireHibernateSupport?: bool
	SpotMaxPricePercentageOverLowestPrice?: int
	TotalLocalStorageGB?: #TotalLocalStorageGBRequest
	VCpuCount?: #VCpuCountRangeRequest
}

#LaunchTemplateConfig: {
	LaunchTemplateSpecification?: #FleetLaunchTemplateSpecification
	Overrides?: [...#LaunchTemplateOverrides]
}

#LaunchTemplateOverrides: {
	AvailabilityZone?: string
	AvailabilityZoneId?: string
	InstanceRequirements?: #InstanceRequirementsRequest
	InstanceType?: string
	Priority?: number
	SpotPrice?: string
	SubnetId?: string
	WeightedCapacity?: number
}

#LoadBalancersConfig: {
	ClassicLoadBalancersConfig?: #ClassicLoadBalancersConfig
	TargetGroupsConfig?: #TargetGroupsConfig
}

#MemoryGiBPerVCpuRequest: {
	Max?: number
	Min?: number
}

#MemoryMiBRequest: {
	Max?: int
	Min?: int
}

#NetworkBandwidthGbpsRequest: {
	Max?: number
	Min?: number
}

#NetworkInterfaceCountRequest: {
	Max?: int
	Min?: int
}

#PerformanceFactorReferenceRequest: {
	InstanceFamily?: string
}

#PrivateIpAddressSpecification: {
	Primary?: bool
	PrivateIpAddress: string
}

#SpotCapacityRebalance: {
	ReplacementStrategy?: "launch" | "launch-before-terminate"
	TerminationDelay?: int
}

#SpotFleetLaunchSpecification: {
	BlockDeviceMappings?: [...#BlockDeviceMapping]
	EbsOptimized?: bool
	IamInstanceProfile?: #IamInstanceProfileSpecification
	ImageId: string
	InstanceRequirements?: #InstanceRequirementsRequest
	InstanceType?: string
	KernelId?: string
	KeyName?: string
	Monitoring?: #SpotFleetMonitoring
	NetworkInterfaces?: [...#InstanceNetworkInterfaceSpecification]
	Placement?: #SpotPlacement
	RamdiskId?: string
	SecurityGroups?: [...#GroupIdentifier]
	SpotPrice?: string
	SubnetId?: string
	TagSpecifications?: [...#SpotFleetTagSpecification]
	UserData?: string
	WeightedCapacity?: number
}

#SpotFleetMonitoring: {
	Enabled?: bool
}

#SpotFleetRequestConfigData: {
	AllocationStrategy?: "capacityOptimized" | "capacityOptimizedPrioritized" | "diversified" | "lowestPrice" | "priceCapacityOptimized"
	Context?: string
	ExcessCapacityTerminationPolicy?: "Default" | "NoTermination" | "default" | "noTermination"
	IamFleetRole: string
	InstanceInterruptionBehavior?: "hibernate" | "stop" | "terminate"
	InstancePoolsToUseCount?: int
	LaunchSpecifications?: [...#SpotFleetLaunchSpecification]
	LaunchTemplateConfigs?: [...#LaunchTemplateConfig]
	LoadBalancersConfig?: #LoadBalancersConfig
	OnDemandAllocationStrategy?: string
	OnDemandMaxTotalPrice?: string
	OnDemandTargetCapacity?: int
	ReplaceUnhealthyInstances?: bool
	SpotMaintenanceStrategies?: #SpotMaintenanceStrategies
	SpotMaxTotalPrice?: string
	SpotPrice?: string
	TagSpecifications?: [...#SpotFleetTagSpecification]
	TargetCapacity: int
	TargetCapacityUnitType?: "vcpu" | "memory-mib" | "units"
	TerminateInstancesWithExpiration?: bool
	Type?: "maintain" | "request"
	ValidFrom?: string
	ValidUntil?: string
}

#SpotFleetTagSpecification: {
	ResourceType?: "client-vpn-endpoint" | "customer-gateway" | "dedicated-host" | "dhcp-options" | "egress-only-internet-gateway" | "elastic-gpu" | "elastic-ip" | "export-image-task" | "export-instance-task" | "fleet" | "fpga-image" | "host-reservation" | "image" | "import-image-task" | "import-snapshot-task" | "instance" | "internet-gateway" | "key-pair" | "launch-template" | "local-gateway-route-table-vpc-association" | "natgateway" | "network-acl" | "network-insights-analysis" | "network-insights-path" | "network-interface" | "placement-group" | "reserved-instances" | "route-table" | "security-group" | "snapshot" | "spot-fleet-request" | "spot-instances-request" | "subnet" | "traffic-mirror-filter" | "traffic-mirror-session" | "traffic-mirror-target" | "transit-gateway" | "transit-gateway-attachment" | "transit-gateway-connect-peer" | "transit-gateway-multicast-domain" | "transit-gateway-route-table" | "volume" | "vpc" | "vpc-flow-log" | "vpc-peering-connection" | "vpn-connection" | "vpn-gateway"
	Tags?: [...#Tag]
}

#SpotMaintenanceStrategies: {
	CapacityRebalance?: #SpotCapacityRebalance
}

#SpotPlacement: {
	AvailabilityZone?: string
	AvailabilityZoneId?: string
	GroupName?: string
	Tenancy?: "dedicated" | "default" | "host"
}

#Tag: {
	Key: string
	Value: string
}

#TargetGroup: {
	Arn: string
}

#TargetGroupsConfig: {
	TargetGroups: [...#TargetGroup]
}

#TotalLocalStorageGBRequest: {
	Max?: number
	Min?: number
}

#VCpuCountRangeRequest: {
	Max?: int
	Min?: int
}
