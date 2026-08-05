package accessgrantsinstance

#Properties: {
	// The Amazon Resource Name (ARN) of the specified AWS Identity Center.
	IdentityCenterArn?: #IdentityCenterArn
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
