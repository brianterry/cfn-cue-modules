package ipamprefixlistresolver

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the IPAM this Prefix List Resolver is a part of.
	IpamArn: string
	// Id of the IPAM Prefix List Resolver.
	IpamPrefixListResolverId: string
	// The Amazon Resource Name (ARN) of the IPAM Prefix List Resolver
	IpamPrefixListResolverArn: string
}
