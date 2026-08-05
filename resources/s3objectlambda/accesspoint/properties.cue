package accesspoint

import "strings"

#Properties: {
	// The name you want to assign to this Object lambda Access Point.
	Name?: string & =~"^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?$" & strings.MinRunes(3) & strings.MaxRunes(45)
	// The Object lambda Access Point Configuration that configures transformations to be applied on the objects on specified S3 Actions
	ObjectLambdaConfiguration: #ObjectLambdaConfiguration
}

#Alias: {
	// The status of the Object Lambda alias.
	Status?: string & =~"^[A-Z]*$"
	// The value of the Object Lambda alias.
	Value: string & =~"^[a-z0-9\\-]*$"
}

#AwsLambda: {
	FunctionArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	FunctionPayload?: string
}

#ObjectLambdaConfiguration: {
	AllowedFeatures?: [...string]
	CloudWatchMetricsEnabled?: bool
	SupportingAccessPoint: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	TransformationConfigurations: [...#TransformationConfiguration]
}

#PolicyStatus: {
	// Specifies whether the Object lambda Access Point Policy is Public or not. Object lambda Access Points are private by default.
	IsPublic?: bool
}

#PublicAccessBlockConfiguration: {
	// Specifies whether Amazon S3 should block public access control lists (ACLs) to this object lambda access point. Setting this element to TRUE causes the following behavior:
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

#TransformationConfiguration: {
	Actions: [...#Action]
	ContentTransformation: {
		AwsLambda: #AwsLambda
	}
}
