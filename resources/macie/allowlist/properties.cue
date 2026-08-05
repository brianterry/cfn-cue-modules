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

#Criteria: {
	Regex: string
} | {
	S3WordsList: #S3WordsList
}

#Regex: string

#S3WordsList: {
	BucketName: string
	ObjectKey: string
}

#Status: "OK" | "S3_OBJECT_NOT_FOUND" | "S3_USER_ACCESS_DENIED" | "S3_OBJECT_ACCESS_DENIED" | "S3_THROTTLED" | "S3_OBJECT_OVERSIZE" | "S3_OBJECT_EMPTY" | "UNKNOWN_ERROR"

#Tag: {
	// The tag's key.
	Key: string
	// The tag's value.
	Value: string
}
