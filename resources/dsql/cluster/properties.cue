package cluster

import "strings"

#Properties: {
	// Whether deletion protection is enabled in this cluster.
	DeletionProtectionEnabled?: bool
	// The KMS key that encrypts data on the cluster.
	KmsEncryptionKey?: string
	// The Multi-region properties associated to this cluster.
	MultiRegionProperties?: {
		Clusters?: [...string]
		WitnessRegion?: string
	}
	// The IAM policy applied to the cluster resource.
	PolicyDocument?: string
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
