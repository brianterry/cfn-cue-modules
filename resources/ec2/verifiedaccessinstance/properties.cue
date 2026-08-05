package verifiedaccessinstance

import "strings"

#Properties: {
	// Introduce CidrEndpointsCustomSubDomain property to represent the domain (say, ava.my-company.com)
	CidrEndpointsCustomSubDomain?: string
	// A description for the AWS Verified Access instance.
	Description?: string
	// Indicates whether FIPS is enabled
	FipsEnabled?: bool
	// The configuration options for AWS Verified Access instances.
	LoggingConfigurations?: #VerifiedAccessLogs
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The IDs of the AWS Verified Access trust providers.
	VerifiedAccessTrustProviderIds?: [...#VerifiedAccessTrustProviderId]
	// AWS Verified Access trust providers.
	VerifiedAccessTrustProviders?: [...#VerifiedAccessTrustProvider]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VerifiedAccessLogs: {
	// Sends Verified Access logs to CloudWatch Logs.
	CloudWatchLogs?: {
		Enabled?: bool
		LogGroup?: string
	}
	// Include claims from trust providers in Verified Access logs.
	IncludeTrustContext?: bool
	// Sends Verified Access logs to Kinesis.
	KinesisDataFirehose?: {
		DeliveryStream?: string
		Enabled?: bool
	}
	// Select log version for Verified Access logs.
	LogVersion?: string
	// Sends Verified Access logs to Amazon S3.
	S3?: {
		BucketName?: string
		BucketOwner?: string
		Enabled?: bool
		Prefix?: string
	}
}

#VerifiedAccessTrustProvider: {
	// The description of trust provider.
	Description?: string
	// The type of device-based trust provider.
	DeviceTrustProviderType?: string
	// The type of trust provider (user- or device-based).
	TrustProviderType?: string
	// The type of user-based trust provider.
	UserTrustProviderType?: string
	// The ID of the trust provider.
	VerifiedAccessTrustProviderId?: string
}
