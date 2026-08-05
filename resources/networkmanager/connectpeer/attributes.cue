package connectpeer

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the Connect peer.
	ConnectPeerId: string
	// State of the connect peer.
	State: string
	// Connect peer creation time.
	CreatedAt: string
	// Configuration of the connect peer.
	Configuration: #ConnectPeerConfiguration
	// The ID of the core network.
	CoreNetworkId: string
	// The Connect peer Regions where edges are located.
	EdgeLocation: string
	// Errors from the last modification of the connect peer.
	LastModificationErrors: [...string]
}
