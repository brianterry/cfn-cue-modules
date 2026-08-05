package accessgrantslocation

#Properties: {
	// The Amazon Resource Name (ARN) of the access grant location's associated IAM role.
	IamRoleArn: string
	// Descriptor for where the location actually points
	LocationScope: string
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
