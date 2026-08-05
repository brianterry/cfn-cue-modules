package podidentityassociation

import "strings"

#Properties: {
	// The cluster that the pod identity association is created for.
	ClusterName: string & strings.MinRunes(1)
	// The Disable Session Tags of the pod identity association.
	DisableSessionTags?: bool
	// The Kubernetes namespace that the pod identity association is created for.
	Namespace: string
	// The policy of the pod identity association.
	Policy?: string & strings.MinRunes(1)
	// The IAM role ARN that the pod identity association is created for.
	RoleArn: string
	// The Kubernetes service account that the pod identity association is created for.
	ServiceAccount: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The Target Role Arn of the pod identity association.
	TargetRoleArn?: string & strings.MinRunes(1)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
