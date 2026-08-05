package connection

import "strings"

#Properties: {
	// The activation key for accepting a connection proposal from a partner CSP. Mutually exclusive with EnvironmentId.
	ActivationKey?: string
	// The logical attachment point in your AWS network where the managed connection will be connected.
	AttachPoint: #AttachPoint
	// The bandwidth of the connection (e.g., 50Mbps, 1Gbps). Required when creating a connection through AWS.
	Bandwidth?: string & =~"^\\d+[MG]bps$"
	// A description of the connection.
	Description?: string & =~"^[-a-zA-Z0-9_ ]+$" & strings.MaxRunes(255)
	// The ID of the environment for the connection. Required when creating a connection through AWS. Mutually exclusive with ActivationKey.
	EnvironmentId?: string & strings.MinRunes(1) & strings.MaxRunes(32)
	// The remote account identifier for the connection. Required when creating a connection through AWS. Replaces RemoteOwnerAccount.
	RemoteAccount?: {
		Identifier: string & =~"^[-a-zA-Z0-9_@\\.]+$" & strings.MaxRunes(255)
	}
	// Deprecated. Use RemoteAccount instead. The account ID of the remote owner. Required when creating a connection through AWS.
	RemoteOwnerAccount?: string & =~"^[-a-zA-Z0-9_@\\.]+$" & strings.MaxRunes(255)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AttachPoint: {
	// The ARN of the resource to attach to.
	Arn?: string
	// The ID of the Direct Connect Gateway to attach to.
	DirectConnectGateway?: string & =~"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
}

#Provider: {
	// The name of the cloud service provider.
	CloudServiceProvider?: string & strings.MaxRunes(32)
	// The name of the last mile provider.
	LastMileProvider?: string & strings.MaxRunes(32)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
