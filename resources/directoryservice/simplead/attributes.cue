package simplead

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The alias for a directory.
	Alias: string
	// The IP addresses of the DNS servers for the directory, such as [ "172.31.3.154", "172.31.63.203" ].
	DnsIpAddresses: [...string]
	// The unique identifier for a directory.
	DirectoryId: string
}
