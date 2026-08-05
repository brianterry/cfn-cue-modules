package ipampool

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of the IPAM Pool.
	IpamPoolId: string
	// The Amazon Resource Name (ARN) of the IPAM Pool.
	Arn: string
	// The Amazon Resource Name (ARN) of the scope this pool is a part of.
	IpamScopeArn: string
	// Determines whether this scope contains publicly routable space or space for a private network
	IpamScopeType: "public" | "private"
	// The Amazon Resource Name (ARN) of the IPAM this pool is a part of.
	IpamArn: string
	// The depth of this pool in the source pool hierarchy.
	PoolDepth: int
	// The state of this pool. This can be one of the following values: "create-in-progress", "create-complete", "modify-in-progress", "modify-complete", "delete-in-progress", or "delete-complete"
	State: "create-in-progress" | "create-complete" | "modify-in-progress" | "modify-complete" | "delete-in-progress" | "delete-complete"
	// An explanation of how the pool arrived at it current state.
	StateMessage: string
}
