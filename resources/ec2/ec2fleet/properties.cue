package ec2fleet

import "strings"

#Properties: {
	Context?: string
	ExcessCapacityTerminationPolicy?: "termination" | "no-termination"
	LaunchTemplateConfigs: [...#FleetLaunchTemplateConfigRequest]
	OnDemandOptions?: #OnDemandOptionsRequest
	ReplaceUnhealthyInstances?: bool
	ReservedCapacityOptions?: #ReservedCapacityOptionsRequest
	SpotOptions?: #SpotOptionsRequest
	TagSpecifications?: [...#TagSpecification]
	TargetCapacitySpecification: #TargetCapacitySpecificationRequest
	TerminateInstancesWithExpiration?: bool
	Type?: "maintain" | "request" | "instant"
	ValidFrom?: string
	ValidUntil?: string
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
	DeviceName?: string
	Ebs?: #EbsBlockDevice
	NoDevice?: string
	VirtualName?: string
}

#CapacityRebalance: {
	ReplacementStrategy?: "launch" | "launch-before-terminate"
	TerminationDelay?: int
}

#CapacityReservationOptionsRequest: {
	UsageStrategy?: "use-capacity-reservations-first"
}

#CpuPerformanceFactorRequest: {
	References?: [...#PerformanceFactorReferenceRequest]
}

#EbsBlockDevice: {
	DeleteOnTermination?: bool
	Encrypted?: bool
	Iops?: int
	KmsKeyId?: string
	SnapshotId?: string
	VolumeSize?: int
	VolumeType?: "gp2" | "gp3" | "io1" | "io2" | "sc1" | "st1" | "standard"
}

#FleetLaunchTemplateConfigRequest: {
	LaunchTemplateSpecification?: #FleetLaunchTemplateSpecificationRequest
	Overrides?: [...#FleetLaunchTemplateOverridesRequest]
}

#FleetLaunchTemplateOverridesRequest: {
	AvailabilityZone?: string
	AvailabilityZoneId?: string
	BlockDeviceMappings?: [...#BlockDeviceMapping]
	IamInstanceProfile?: #IamInstanceProfileSpecification
	InstanceRequirements?: #InstanceRequirementsRequest
	InstanceType?: string
	KeyName?: string
	MaxPrice?: string
	MetadataOptions?: #InstanceMetadataOptionsRequest
	NetworkInterfaces?: [...#NetworkInterfaceSpecificationRequest]
	Placement?: #Placement
	Priority?: number
	SubnetId?: string
	WeightedCapacity?: number
}

#FleetLaunchTemplateSpecificationRequest: {
	LaunchTemplateId?: string
	LaunchTemplateName?: string & =~"[a-zA-Z0-9\\(\\)\\.\\-/_]+" & strings.MinRunes(3) & strings.MaxRunes(128)
	LaunchTemplateSpecificationUserData?: string
	Version: string
}

#IamInstanceProfileSpecification: {
	Arn?: string
	Name?: string
}

#InstanceMetadataOptionsRequest: {
	HttpEndpoint?: "disabled" | "enabled"
	HttpPutResponseHopLimit?: int
	HttpTokens?: "optional" | "required"
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

#Ipv6AddressRequest: {
	Ipv6Address?: string
}

#MaintenanceStrategies: {
	CapacityRebalance?: #CapacityRebalance
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

#NetworkInterfaceSpecificationRequest: {
	AssociatePublicIpAddress?: bool
	DeleteOnTermination?: bool
	Description?: string
	DeviceIndex?: int
	Groups?: [...string]
	InterfaceType?: string
	Ipv6AddressCount?: int
	Ipv6Addresses?: [...#Ipv6AddressRequest]
	NetworkCardIndex?: int
	NetworkInterfaceId?: string
	PrivateIpAddress?: string
	PrivateIpAddresses?: [...#PrivateIpAddressSpecificationRequest]
	SecondaryPrivateIpAddressCount?: int
	SubnetId?: string
}

#OnDemandOptionsRequest: {
	AllocationStrategy?: string
	CapacityReservationOptions?: #CapacityReservationOptionsRequest
	MaxTotalPrice?: string
	MinTargetCapacity?: int
	SingleAvailabilityZone?: bool
	SingleInstanceType?: bool
}

#PerformanceFactorReferenceRequest: {
	InstanceFamily?: string
}

#Placement: {
	Affinity?: string
	AvailabilityZone?: string
	GroupName?: string
	HostId?: string
	HostResourceGroupArn?: string
	PartitionNumber?: int
	SpreadDomain?: string
	Tenancy?: string
}

#PrivateIpAddressSpecificationRequest: {
	Primary?: bool
	PrivateIpAddress?: string
}

#ReservedCapacityOptionsRequest: {
	ReservationTypes?: [..."interruptible-capacity-reservation"]
}

#SpotOptionsRequest: {
	AllocationStrategy?: "lowest-price" | "lowestPrice" | "diversified" | "capacityOptimized" | "capacity-optimized" | "capacityOptimizedPrioritized" | "capacity-optimized-prioritized" | "priceCapacityOptimized" | "price-capacity-optimized"
	InstanceInterruptionBehavior?: "hibernate" | "stop" | "terminate"
	InstancePoolsToUseCount?: int
	MaintenanceStrategies?: #MaintenanceStrategies
	MaxTotalPrice?: string
	MinTargetCapacity?: int
	SingleAvailabilityZone?: bool
	SingleInstanceType?: bool
}

#Tag: {
	Key: string
	Value: string
}

#TagSpecification: {
	ResourceType?: "client-vpn-endpoint" | "customer-gateway" | "dedicated-host" | "dhcp-options" | "egress-only-internet-gateway" | "elastic-gpu" | "elastic-ip" | "export-image-task" | "export-instance-task" | "fleet" | "fpga-image" | "host-reservation" | "image" | "import-image-task" | "import-snapshot-task" | "instance" | "internet-gateway" | "key-pair" | "launch-template" | "local-gateway-route-table-vpc-association" | "natgateway" | "network-acl" | "network-insights-analysis" | "network-insights-path" | "network-interface" | "placement-group" | "reserved-instances" | "route-table" | "security-group" | "snapshot" | "spot-fleet-request" | "spot-instances-request" | "subnet" | "traffic-mirror-filter" | "traffic-mirror-session" | "traffic-mirror-target" | "transit-gateway" | "transit-gateway-attachment" | "transit-gateway-connect-peer" | "transit-gateway-multicast-domain" | "transit-gateway-route-table" | "volume" | "vpc" | "vpc-flow-log" | "vpc-peering-connection" | "vpn-connection" | "vpn-gateway"
	Tags?: [...#Tag]
}

#TargetCapacitySpecificationRequest: {
	DefaultTargetCapacityType?: "on-demand" | "spot" | "capacity-block" | "reserved-capacity"
	OnDemandTargetCapacity?: int
	SpotTargetCapacity?: int
	TargetCapacityUnitType?: "vcpu" | "memory-mib" | "units"
	TotalTargetCapacity: int
}

#TotalLocalStorageGBRequest: {
	Max?: number
	Min?: number
}

#VCpuCountRangeRequest: {
	Max?: int
	Min?: int
}
