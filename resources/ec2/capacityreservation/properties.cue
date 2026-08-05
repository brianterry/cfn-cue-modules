package capacityreservation

#Properties: {
	AvailabilityZone?: string
	AvailabilityZoneId?: string
	EbsOptimized?: bool
	EndDate?: string
	EndDateType?: string
	EphemeralStorage?: bool
	InstanceCount: int
	InstanceMatchCriteria?: string
	InstancePlatform: string
	InstanceType: string
	OutPostArn?: string
	PlacementGroupArn?: string
	TagSpecifications?: [...#TagSpecification]
	Tenancy?: string
	UnusedReservationBillingOwnerId?: string
}

#CapacityAllocation: {
	AllocationType?: string
	Count?: int
}

#Tag: {
	Key: string
	Value: string
}

#TagSpecification: {
	ResourceType?: string
	Tags?: [...#Tag]
}
