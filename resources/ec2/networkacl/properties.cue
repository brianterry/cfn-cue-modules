package networkacl

#Properties: {
	// The tags for the network ACL.
	Tags?: [...#Tag]
	// The ID of the VPC for the network ACL.
	VpcId: string
}

#Tag: {
	// The tag key.
	Key: string
	// The tag value.
	Value: string
}
