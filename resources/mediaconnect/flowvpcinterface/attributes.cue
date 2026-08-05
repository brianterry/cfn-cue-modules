package flowvpcinterface

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// IDs of the network interfaces created in customer's account by MediaConnect.
	NetworkInterfaceIds: [...string]
}
