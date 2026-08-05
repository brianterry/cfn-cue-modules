package ipamprefixlistresolvertarget

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of the IPAM Prefix List Resolver Target.
	IpamPrefixListResolverTargetId: string
	// Id of the IPAM Prefix List Resolver Target.
	IpamPrefixListResolverTargetArn: string
}
