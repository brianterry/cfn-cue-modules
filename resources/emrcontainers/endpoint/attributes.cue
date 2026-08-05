package endpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the managed endpoint.
	Arn: string
	// The ID of the managed endpoint.
	Id: string
	// The server URL of the managed endpoint.
	ServerUrl: string
	// The state of the managed endpoint.
	State: string
	// Additional details about the state of the managed endpoint.
	StateDetails: string
	// The reason for a failed managed endpoint.
	FailureReason: string
	// The date and time when the managed endpoint was created.
	CreatedAt: string
	// The security group associated with the managed endpoint.
	SecurityGroup: string
	// The certificate authority for the managed endpoint.
	CertificateAuthority: #Certificate
	// The auth proxy URL for Spark Connect connections.
	AuthProxyUrl: string
}
