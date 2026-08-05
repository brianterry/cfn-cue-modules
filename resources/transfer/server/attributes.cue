package server

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:\\S+$" & strings.MinRunes(20) & strings.MaxRunes(1600)
	// The list of egress IP addresses of this server. These IP addresses are only relevant for servers that use the AS2 protocol. They are used for sending asynchronous MDNs. These IP addresses are assigned automatically when you create an AS2 server. Additionally, if you update an existing server and add the AS2 protocol, static IP addresses are assigned as well.
	As2ServiceManagedEgressIpAddresses: [...string & =~"^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"]
	ServerId: string & =~"^s-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
	State: #State
}
