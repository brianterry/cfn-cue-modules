package accesspoint

import "strings"

#Properties: {
	// The name of the bucket that you want to associate this Access Point with.
	Bucket: string & strings.MinRunes(3) & strings.MaxRunes(255)
	// The AWS account ID associated with the S3 bucket associated with this access point.
	BucketAccountId?: string & =~"^\\d{12}$" & strings.MaxRunes(64)
	// The name you want to assign to this Access Point. If you don't specify a name, AWS CloudFormation generates a unique ID and uses that ID for the access point name. For directory buckets, the access point name must consist of a base name that you provide and suﬃx that includes the ZoneID (AWS Availability Zone or Local Zone) of your bucket location, followed by --xa-s3.
	Name?: string & =~"^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?$" & strings.MinRunes(3) & strings.MaxRunes(50)
	// The Access Point Policy you want to apply to this access point.
	Policy?: {...}
	// The PublicAccessBlock configuration that you want to apply to this Access Point.
	PublicAccessBlockConfiguration?: #PublicAccessBlockConfiguration
	// For directory buckets, you can ﬁlter access control to speciﬁc preﬁxes, API operations, or a combination of both.
	Scope?: #Scope
	Tags?: [...#Tag]
	// If you include this field, Amazon S3 restricts access to this Access Point to requests from the specified Virtual Private Cloud (VPC).
	VpcConfiguration?: #VpcConfiguration
}

#PublicAccessBlockConfiguration: {
	// Specifies whether Amazon S3 should block public access control lists (ACLs) for buckets in this account. Setting this element to TRUE causes the following behavior:
	// - PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.
	// - PUT Object calls fail if the request includes a public ACL.
	// . - PUT Bucket calls fail if the request includes a public ACL.
	// Enabling this setting doesn't affect existing policies or ACLs.
	BlockPublicAcls?: bool
	// Specifies whether Amazon S3 should block public bucket policies for buckets in this account. Setting this element to TRUE causes Amazon S3 to reject calls to PUT Bucket policy if the specified bucket policy allows public access. Enabling this setting doesn't affect existing bucket policies.
	BlockPublicPolicy?: bool
	// Specifies whether Amazon S3 should ignore public ACLs for buckets in this account. Setting this element to TRUE causes Amazon S3 to ignore all public ACLs on buckets in this account and any objects that they contain. Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set.
	IgnorePublicAcls?: bool
	// Specifies whether Amazon S3 should restrict public bucket policies for this bucket. Setting this element to TRUE restricts access to this bucket to only AWS services and authorized users within this account if the bucket has a public policy.
	// Enabling this setting doesn't affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked.
	RestrictPublicBuckets?: bool
}

#Scope: {
	// You can include one or more API operations as permissions
	Permissions?: [..."GetObject" | "GetObjectAttributes" | "ListMultipartUploadParts" | "ListBucket" | "ListBucketMultipartUploads" | "PutObject" | "DeleteObject" | "AbortMultipartUpload"]
	// You can specify any amount of preﬁxes, but the total length of characters of all preﬁxes must be less than 256 bytes in size.
	Prefixes?: [...string]
}

#Tag: {
	Key: string & =~"^(?!aws:.*)([\\p{L}\\p{Z}\\p{N}_.:=+\\/\\-@%]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:=+\\/\\-@%]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcConfiguration: {
	// If this field is specified, this access point will only allow connections from the specified VPC ID.
	VpcId?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}
