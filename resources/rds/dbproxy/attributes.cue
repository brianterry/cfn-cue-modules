package dbproxy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) for the proxy.
	DBProxyArn: string
	// The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.
	Endpoint: string
	// VPC ID to associate with the new DB proxy.
	VpcId: string
}
