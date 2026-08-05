package transitgatewayroutetable

#Properties: {
	// Tags are composed of a Key/Value pair. You can use tags to categorize and track each parameter group. The tag value null is permitted.
	Tags?: [...#Tag]
	// The ID of the transit gateway.
	TransitGatewayId: string
}

#Tag: {
	// The key of the associated tag key-value pair
	Key: string
	// The value of the associated tag key-value pair
	Value: string
}
