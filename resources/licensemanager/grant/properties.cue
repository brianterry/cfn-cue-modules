package grant

#Properties: {
	AllowedOperations?: [...string]
	// Name for the created Grant.
	GrantName?: string
	// Home region for the created grant.
	HomeRegion?: string
	// License Arn for the grant.
	LicenseArn?: #Arn
	Principals?: [...#Arn]
	Status?: string
	// A list of tags to attach.
	Tags?: [...#Tag]
}

#Arn: string & strings.MaxRunes(2048)

#Tag: {
	// The key name of the tag.
	Key: string
	// The value for the tag.
	Value: string
}
