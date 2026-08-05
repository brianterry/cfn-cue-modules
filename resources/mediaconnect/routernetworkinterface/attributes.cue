package routernetworkinterface

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerNetworkInterface:[a-z0-9]{12}$"
	// The number of router inputs associated with the network interface.
	AssociatedInputCount: int
	// The number of router outputs associated with the network interface.
	AssociatedOutputCount: int
	// The timestamp when the router network interface was created.
	CreatedAt: string
	// The unique identifier of the router network interface.
	Id: string
	NetworkInterfaceType: #RouterNetworkInterfaceType
	State: #RouterNetworkInterfaceState
	// The timestamp when the router network interface was last updated.
	UpdatedAt: string
}
