package capacityreservationfleet

#Properties: {
	AllocationStrategy?: string
	EndDate?: string
	InstanceMatchCriteria?: "open"
	InstanceTypeSpecifications?: [...#InstanceTypeSpecification]
	NoRemoveEndDate?: bool
	RemoveEndDate?: bool
	TagSpecifications?: [...#TagSpecification]
	Tenancy?: "default"
	TotalTargetCapacity?: int & >=1 & <=25000
}

#InstanceTypeSpecification: {
	AvailabilityZone?: string
	AvailabilityZoneId?: string
	EbsOptimized?: bool
	InstancePlatform?: string
	InstanceType?: string
	Priority?: int & >=0 & <=999
	Weight?: number
}

#Tag: {
	Key: string
	Value: string
}

#TagSpecification: {
	ResourceType?: string
	Tags?: [...#Tag]
}
