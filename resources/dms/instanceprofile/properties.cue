package instanceprofile

import "strings"

#Properties: {
	// The property describes an availability zone of the instance profile.
	AvailabilityZone?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The optional description of the instance profile.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes an identifier for the instance profile. It is used for describing/deleting/modifying. Can be name/arn
	InstanceProfileIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes a name for the instance profile.
	InstanceProfileName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes kms key arn for the instance profile.
	KmsKeyArn?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The property describes a network type for the instance profile.
	NetworkType?: "IPV4" | "DUAL"
	// The property describes the publicly accessible of the instance profile
	PubliclyAccessible?: bool
	// The property describes a subnet group identifier for the instance profile.
	SubnetGroupIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The property describes vps security groups for the instance profile.
	VpcSecurityGroups?: [...string]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
