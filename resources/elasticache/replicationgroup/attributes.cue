package replicationgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The configuration details of the replication group.
	ConfigurationEndPoint: #Endpoint
	// The primary endpoint configuration
	PrimaryEndPoint: #Endpoint
	ReadEndPoint: {
	Addresses?: string
	AddressesList?: [...string]
	Ports?: string
	PortsList?: [...string]
}
	// The endpoint of the reader node in the replication group.
	ReaderEndPoint: #Endpoint
	// The resolved durability state of the replication group after resolving the default value. This is a read-only property.
	EffectiveDurability: "async" | "sync" | "disabled"
}
