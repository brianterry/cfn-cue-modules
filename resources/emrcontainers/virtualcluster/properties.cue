package virtualcluster

import "strings"

#Properties: {
	// Container provider of the virtual cluster.
	ContainerProvider: #ContainerProvider
	// Name of the virtual cluster.
	Name: string & =~"[\\.\\-_/#A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The ID of the security configuration.
	SecurityConfigurationId?: string & =~"[0-9a-z]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Whether the virtual cluster is session-enabled for Spark Connect.
	SessionEnabled?: bool
	// An array of key-value pairs to apply to this virtual cluster.
	Tags?: [...#Tag]
}

#ContainerInfo: {
	EksInfo: #EksInfo
}

#ContainerProvider: {
	// The ID of the container cluster
	Id: string & =~"^[0-9A-Za-z][A-Za-z0-9\\-_]*" & strings.MinRunes(1) & strings.MaxRunes(100)
	Info: #ContainerInfo
	// The type of the container provider
	Type: string
}

#EksInfo: {
	Namespace: string & =~"[a-z0-9]([-a-z0-9]*[a-z0-9])?" & strings.MinRunes(1) & strings.MaxRunes(63)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}
