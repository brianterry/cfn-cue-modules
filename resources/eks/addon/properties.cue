package addon

import "strings"

#Properties: {
	// Name of Addon
	AddonName: string & strings.MinRunes(1)
	// Version of Addon
	AddonVersion?: string & strings.MinRunes(1)
	// Name of Cluster
	ClusterName: string & strings.MinRunes(1)
	// The configuration values to use with the add-on
	ConfigurationValues?: string & strings.MinRunes(1)
	// The custom namespace configuration to use with the add-on
	NamespaceConfig?: {
		Namespace: string
	}
	// An array of pod identities to apply to this add-on.
	PodIdentityAssociations?: [...#PodIdentityAssociation]
	// PreserveOnDelete parameter value
	PreserveOnDelete?: bool
	// Resolve parameter value conflicts
	ResolveConflicts?: "NONE" | "OVERWRITE" | "PRESERVE"
	// IAM role to bind to the add-on's service account
	ServiceAccountRoleArn?: string & strings.MinRunes(1)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#PodIdentityAssociation: {
	// The IAM role ARN that the pod identity association is created for.
	RoleArn: string & =~"^arn:aws[a-zA-Z-]*:iam::\\d{12}:(role)\\/*"
	// The Kubernetes service account that the pod identity association is created for.
	ServiceAccount: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
