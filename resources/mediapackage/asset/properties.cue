package asset

#Properties: {
	// The unique identifier for the Asset.
	Id: string
	// The ID of the PackagingGroup for the Asset.
	PackagingGroupId: string
	// The resource ID to include in SPEKE key requests.
	ResourceId?: string
	// ARN of the source object in S3.
	SourceArn: string
	// The IAM role_arn used to access the source S3 bucket.
	SourceRoleArn: string
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#EgressEndpoint: {
	// The ID of the PackagingConfiguration being applied to the Asset.
	PackagingConfigurationId: string
	// The URL of the parent manifest for the repackaged Asset.
	Url: string
}

#Tag: {
	Key: string
	Value: string
}
