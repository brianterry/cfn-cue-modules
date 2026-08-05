package serviceenvironment

#Properties: {
	CapacityLimits: #CapacityLimits
	ServiceEnvironmentName?: string
	ServiceEnvironmentType: string
	State?: string
	// A key-value pair to associate with a resource.
	Tags?: {...}
}

#CapacityLimit: {
	CapacityUnit?: string
	MaxCapacity?: int
}

#CapacityLimits: [...#CapacityLimit]
