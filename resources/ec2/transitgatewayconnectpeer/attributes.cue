package transitgatewayconnectpeer

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the Connect peer.
	TransitGatewayConnectPeerId: string
	// The Connect peer details.
	ConnectPeerConfiguration: #TransitGatewayConnectPeerConfiguration
	// The state of the Connect peer.
	State: string
	// The creation time.
	CreationTime: string
}
