package ipamresourcediscoveryassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Arn of the IPAM.
	IpamArn: string
	// The home region of the IPAM.
	IpamRegion: string
	// Id of the IPAM Resource Discovery Association.
	IpamResourceDiscoveryAssociationId: string
	// The Amazon Resource Name (ARN) of the resource discovery association is a part of.
	IpamResourceDiscoveryAssociationArn: string
	// If the Resource Discovery Association exists due as part of CreateIpam.
	IsDefault: bool
	// The status of the resource discovery.
	ResourceDiscoveryStatus: string
	// The operational state of the Resource Discovery Association. Related to Create/Delete activities.
	State: string
	// The AWS Account ID for the account where the shared IPAM exists.
	OwnerId: string
}
