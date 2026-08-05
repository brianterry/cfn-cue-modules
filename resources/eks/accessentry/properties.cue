package accessentry

import "strings"

#Properties: {
	// An array of access policies that are associated with the access entry.
	AccessPolicies?: [...#AccessPolicy]
	// The cluster that the access entry is created for.
	ClusterName: string & strings.MinRunes(1)
	// The Kubernetes groups that the access entry is associated with.
	KubernetesGroups?: [...string]
	// The principal ARN that the access entry is created for.
	PrincipalArn: string & strings.MinRunes(1)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The node type to associate with the access entry.
	Type?: string
	// The Kubernetes user that the access entry is associated with.
	Username?: string
}

#AccessPolicy: {
	AccessScope: #AccessScope
	// The ARN of the access policy to add to the access entry.
	PolicyArn: string
}

#AccessScope: {
	// The namespaces to associate with the access scope. Only specify if Type is set to 'namespace'.
	Namespaces?: [...string]
	// The type of the access scope.
	Type: "namespace" | "cluster"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
