package consumableresource

#Properties: {
	// Name of ConsumableResource.
	ConsumableResourceName?: string
	ResourceType: #ResourceType
	// A key-value pair to associate with a resource.
	Tags?: {...}
	// Total Quantity of ConsumableResource.
	TotalQuantity: int
}

#ResourceArn: string

#ResourceType: "REPLENISHABLE" | "NON_REPLENISHABLE"
