package bucket

import "strings"

#Properties: {
	AccessRules?: #AccessRules
	// The name for the bucket.
	BucketName: string & =~"^[a-z0-9][a-z0-9-]{1,52}[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(54)
	// The ID of the bundle to use for the bucket.
	BundleId: string
	// Specifies whether to enable or disable versioning of objects in the bucket.
	ObjectVersioning?: bool
	// An array of strings to specify the AWS account IDs that can access the bucket.
	ReadOnlyAccessAccounts?: [...string]
	// The names of the Lightsail resources for which to set bucket access.
	ResourcesReceivingAccess?: [...string]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AccessRules: {
	// A Boolean value that indicates whether the access control list (ACL) permissions that are applied to individual objects override the getObject option that is currently specified.
	AllowPublicOverrides?: bool
	// Specifies the anonymous access to all objects in a bucket.
	GetObject?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
