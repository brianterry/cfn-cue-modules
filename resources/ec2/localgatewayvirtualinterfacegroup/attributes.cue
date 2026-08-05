package localgatewayvirtualinterfacegroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Number (ARN) of the local gateway virtual interface group
	LocalGatewayVirtualInterfaceGroupArn: string
	// The ID of the virtual interface group
	LocalGatewayVirtualInterfaceGroupId: string
	// The IDs of the virtual interfaces
	LocalGatewayVirtualInterfaceIds: [...string]
	// The ID of the Amazon Web Services account that owns the local gateway virtual interface group
	OwnerId: string
	// The current state of the local gateway virtual interface group
	ConfigurationState: string
}
