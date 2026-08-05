package connection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The arn of the connection resource.
	Arn: string & =~"^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:connection\\/[\\.\\-_A-Za-z0-9]+\\/[\\-A-Za-z0-9]+$"
	// The arn of the connection resource to be used in IAM policies.
	ArnForPolicy: string & =~"^arn:aws([a-z]|\\-)*:events:([a-z]|\\d|\\-)*:([0-9]{12})?:connection\\/[\\.\\-_A-Za-z0-9]+$"
	// The arn of the secrets manager secret created in the customer account.
	SecretArn: string & =~"^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]|\\d|\\-)*:([0-9]{12})?:secret:([a-z]|\\d|\\-)*(!)*[\\/_+=\\.@\\-A-Za-z0-9]+$"
	AuthParameters: #AuthParameters
	// The private resource the HTTP request will be sent to.
	InvocationConnectivityParameters: {
	ResourceParameters: #ResourceParameters
}
}
