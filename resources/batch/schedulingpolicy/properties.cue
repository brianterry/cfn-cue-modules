package schedulingpolicy

#Properties: {
	FairsharePolicy?: #FairsharePolicy
	// Name of Scheduling Policy.
	Name?: string
	QuotaSharePolicy?: #QuotaSharePolicy
	// A key-value pair to associate with a resource.
	Tags?: {...}
}

#FairsharePolicy: {
	ComputeReservation?: number & >=0 & <=99
	ShareDecaySeconds?: number & >=0 & <=604800
	// List of Share Attributes
	ShareDistribution?: [...#ShareAttributes]
}

#QuotaSharePolicy: {
	IdleResourceAssignmentStrategy?: "FIFO"
}

#ResourceArn: string

#ShareAttributes: {
	ShareIdentifier?: string
	WeightFactor?: number & >=0 & <=1000
}
