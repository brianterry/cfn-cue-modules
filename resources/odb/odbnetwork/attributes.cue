package odbnetwork

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ManagedServices: #ManagedServices
	// The unique identifier of the OCI network anchor for the ODB network.
	OciNetworkAnchorId: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The name of the OCI resource anchor that's associated with the ODB network.
	OciResourceAnchorName: string
	// The URL for the VCN that's associated with the ODB network.
	OciVcnUrl: string
	// The Amazon Resource Name (ARN) of the ODB network.
	OdbNetworkArn: string
	// The unique identifier of the ODB network.
	OdbNetworkId: string
	// The list of EC2 placement group IDs associated with your ODB network.
	Ec2PlacementGroupIds: [...string]
}
