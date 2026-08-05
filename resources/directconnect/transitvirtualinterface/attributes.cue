package transitvirtualinterface

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The BGP peers configured on this virtual interface..
	BgpPeers: [...#BgpPeer]
	// The ARN of the virtual interface.
	VirtualInterfaceArn: string & =~"^arn:aws[a-z-]*:directconnect:[a-z0-9-]+:[0-9]{12}:dxvif/dxvif-[a-z0-9]{8}$"
	// The ID of the virtual interface.
	VirtualInterfaceId: string & =~"^dxvif-[a-z0-9]{8}$"
}
