package connection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier for the connection.
	ConnectionId: string & =~"^mcc-[a-z0-9]{8}$"
	// The Amazon Resource Name (ARN) of the connection.
	Arn: string & =~"^arn:aws[a-z-]*:interconnect:[^:]+:[0-9]{12}:connection/mcc-[a-z0-9]{8}$"
	// The partner cloud service provider.
	Provider: #Provider
	// The type of managed connection.
	Type: string & strings.MinRunes(5) & strings.MaxRunes(32)
	// The current state of the connection.
	State: "available" | "requested" | "pending" | "down" | "deleting" | "deleted" | "failed"
	// The shared identifier for the connection pairing.
	SharedId: string & =~"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
	// The AWS account ID of the connection owner.
	OwnerAccount: string
	// The billing tier for the connection.
	BillingTier: int & >=0 & <=8
}
