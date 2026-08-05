package routetable

#Properties: {
	// Any tags assigned to the route table.
	Tags?: [...#Tag]
	// The ID of the VPC.
	VpcId: string
}

#Tag: {
	// The tag key.
	Key: string
	// The tag value.
	Value: string
}
