package ipamscope

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of the IPAM scope.
	IpamScopeId: string
	// The Amazon Resource Name (ARN) of the IPAM scope.
	Arn: string
	// The Amazon Resource Name (ARN) of the IPAM this scope is a part of.
	IpamArn: string
	// Is this one of the default scopes created with the IPAM.
	IsDefault: bool
	// The number of pools that currently exist in this scope.
	PoolCount: int
	// Determines whether this scope contains publicly routable space or space for a private network
	IpamScopeType: "public" | "private"
}
