package allowlist

#Properties: {
	// AllowList criteria.
	Criteria: #Criteria
	// Description of AllowList.
	Description?: string
	// Name of AllowList.
	Name: string
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#S3WordsList: {
	BucketName: string
	ObjectKey: string
}

#Tag: {
	// The tag's key.
	Key: string
	// The tag's value.
	Value: string
}
