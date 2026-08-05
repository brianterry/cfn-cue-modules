package staticip

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	StaticIpArn: string
	// A Boolean value indicating whether the static IP is attached.
	IsAttached: bool
	// The static IP address.
	IpAddress: string
}
