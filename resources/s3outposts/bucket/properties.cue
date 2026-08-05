package bucket

import "strings"

#Properties: {
	// A name for the bucket.
	BucketName: string & =~"(?=^.{3,63}$)(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)" & strings.MinRunes(3) & strings.MaxRunes(63)
	// Rules that define how Amazon S3Outposts manages objects during their lifetime.
	LifecycleConfiguration?: #LifecycleConfiguration
	// The id of the customer outpost on which the bucket resides.
	OutpostId: string & =~"^(op-[a-f0-9]{17}|\\d{12}|ec2)$"
	// An arbitrary set of tags (key-value pairs) for this S3Outposts bucket.
	Tags?: [...#Tag]
}

#AbortIncompleteMultipartUpload: {
	// Specifies the number of days after which Amazon S3Outposts aborts an incomplete multipart upload.
	DaysAfterInitiation: int & >=0
}

#FilterTag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:=+\\/\\-@%]*)$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:=+\\/\\-@%]*)$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#LifecycleConfiguration: {
	// A list of lifecycle rules for individual objects in an Amazon S3Outposts bucket.
	Rules: [...#Rule]
}

#Rule: {
	// Specifies a lifecycle rule that stops incomplete multipart uploads to an Amazon S3Outposts bucket.
	AbortIncompleteMultipartUpload?: #AbortIncompleteMultipartUpload
	// Indicates when objects are deleted from Amazon S3Outposts. The date value must be in ISO 8601 format. The time is always midnight UTC.
	ExpirationDate?: #iso8601UTC
	// Indicates the number of days after creation when objects are deleted from Amazon S3Outposts.
	ExpirationInDays?: int & >=1
	// The container for the filter of the lifecycle rule.
	Filter?: string | string | string
	// Unique identifier for the lifecycle rule. The value can't be longer than 255 characters.
	Id?: string & strings.MaxRunes(255)
	Status?: "Enabled" | "Disabled"
}

#Tag: {
	Key: string & =~"^(?!aws:.*)([\\p{L}\\p{Z}\\p{N}_.:=+\\/\\-@%]*)$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:=+\\/\\-@%]*)$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}
