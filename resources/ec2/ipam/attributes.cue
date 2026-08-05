package ipam

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id of the IPAM.
	IpamId: string
	// The Amazon Resource Name (ARN) of the IPAM.
	Arn: string
	// The Id of the default scope for publicly routable IP space, created with this IPAM.
	PublicDefaultScopeId: string & strings.MaxRunes(255)
	// The Id of the default scope for publicly routable IP space, created with this IPAM.
	PrivateDefaultScopeId: string
	// The number of scopes that currently exist in this IPAM.
	ScopeCount: int
	// The count of resource discoveries associated with this IPAM.
	ResourceDiscoveryAssociationCount: int
	// The Id of the default resource discovery, created with this IPAM.
	DefaultResourceDiscoveryId: string
	// The Id of the default association to the default resource discovery, created with this IPAM.
	DefaultResourceDiscoveryAssociationId: string
}
