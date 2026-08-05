package odbpeeringconnection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the ODB peering connection.
	OdbPeeringConnectionArn: string
	// The unique identifier of the ODB peering connection.
	OdbPeeringConnectionId: string
	// The Amazon Resource Name (ARN) of the ODB network.
	OdbNetworkArn: string
	// The Amazon Resource Name (ARN) of the peer network.
	PeerNetworkArn: string
	// The CIDR blocks for the ODB peering connection.
	PeerNetworkCidrs: [...string]
}
