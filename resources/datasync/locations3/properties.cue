package locations3

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the Amazon S3 bucket.
	S3BucketArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):s3:[a-z\\-0-9]*:[0-9]*:.*$" & strings.MaxRunes(156)
	S3Config: #S3Config
	// The Amazon S3 storage class you want to store your files in when this location is used as a task destination.
	S3StorageClass?: "STANDARD" | "STANDARD_IA" | "ONEZONE_IA" | "INTELLIGENT_TIERING" | "GLACIER" | "GLACIER_INSTANT_RETRIEVAL" | "DEEP_ARCHIVE"
	// A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon S3 is used to read data from the S3 source location or write data to the S3 destination.
	Subdirectory?: string & =~"^[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}\\p{C}]*$" & strings.MaxRunes(1024)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#S3Config: {
	// The ARN of the IAM role of the Amazon S3 bucket.
	BucketAccessRoleArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*$" & strings.MaxRunes(2048)
}

#Tag: {
	// The key for an AWS resource tag.
	Key: string & =~"^[a-zA-Z0-9\\s+=._:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for an AWS resource tag.
	Value: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
