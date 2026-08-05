package instancefleetconfig

#Properties: {
	ClusterId: string
	InstanceFleetType: string
	InstanceTypeConfigs?: [...#InstanceTypeConfig]
	LaunchSpecifications?: #InstanceFleetProvisioningSpecifications
	Name?: string
	ResizeSpecifications?: #InstanceFleetResizingSpecifications
	TargetOnDemandCapacity?: int
	TargetSpotCapacity?: int
}

#Configuration: {
	Classification?: string
	ConfigurationProperties?: {...}
	Configurations?: [...#Configuration]
}

#EbsBlockDeviceConfig: {
	VolumeSpecification: #VolumeSpecification
	VolumesPerInstance?: int
}

#EbsConfiguration: {
	EbsBlockDeviceConfigs?: [...#EbsBlockDeviceConfig]
	EbsOptimized?: bool
}

#InstanceFleetProvisioningSpecifications: {
	OnDemandSpecification?: #OnDemandProvisioningSpecification
	SpotSpecification?: #SpotProvisioningSpecification
}

#InstanceFleetResizingSpecifications: {
	OnDemandResizeSpecification?: #OnDemandResizingSpecification
	SpotResizeSpecification?: #SpotResizingSpecification
}

#InstanceTypeConfig: {
	BidPrice?: string
	BidPriceAsPercentageOfOnDemandPrice?: number
	Configurations?: [...#Configuration]
	CustomAmiId?: string
	EbsConfiguration?: #EbsConfiguration
	InstanceType: string
	Priority?: number
	WeightedCapacity?: int
}

#OnDemandCapacityReservationOptions: {
	CapacityReservationPreference?: string
	CapacityReservationResourceGroupArn?: string
	UsageStrategy?: string
}

#OnDemandProvisioningSpecification: {
	AllocationStrategy: string
	CapacityReservationOptions?: #OnDemandCapacityReservationOptions
}

#OnDemandResizingSpecification: {
	AllocationStrategy?: string
	CapacityReservationOptions?: #OnDemandCapacityReservationOptions
	TimeoutDurationMinutes?: int
}

#SpotProvisioningSpecification: {
	AllocationStrategy?: string
	BlockDurationMinutes?: int
	TimeoutAction: string
	TimeoutDurationMinutes: int
}

#SpotResizingSpecification: {
	AllocationStrategy?: string
	TimeoutDurationMinutes?: int
}

#VolumeSpecification: {
	Iops?: int
	SizeInGB: int
	Throughput?: int
	VolumeType: string
}
