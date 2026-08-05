package ipamresourcediscovery

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of the IPAM Pool.
	IpamResourceDiscoveryId: string
	// Amazon Resource Name (Arn) for the Resource Discovery.
	IpamResourceDiscoveryArn: string
	// Owner Account ID of the Resource Discovery
	OwnerId: string
	// The region the resource discovery is setup in. 
	IpamResourceDiscoveryRegion: string
	// Determines whether or not address space from this pool is publicly advertised. Must be set if and only if the pool is IPv6.
	IsDefault: bool
	// The state of this Resource Discovery.
	State: string
}
