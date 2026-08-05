package localgatewayvirtualinterface

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the virtual interface
	LocalGatewayVirtualInterfaceId: string
	// The ID of the local gateway
	LocalGatewayId: string
	// The Autonomous System Number(ASN) for the local Border Gateway Protocol (BGP)
	LocalBgpAsn: int
	// The ID of the Amazon Web Services account that owns the local gateway virtual interface group
	OwnerId: string
	// The current state of the local gateway virtual interface
	ConfigurationState: string
}
