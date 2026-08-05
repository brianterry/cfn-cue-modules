package dbproxyendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) for the DB proxy endpoint.
	DBProxyEndpointArn: string & =~"arn:aws[A-Za-z0-9-]{0,64}:rds:[A-Za-z0-9-]{1,64}:[0-9]{12}:.*"
	// The endpoint that you can use to connect to the DB proxy. You include the endpoint value in the connection string for a database client application.
	Endpoint: string & strings.MaxRunes(256)
	// VPC ID to associate with the new DB proxy endpoint.
	VpcId: string
	// A value that indicates whether this endpoint is the default endpoint for the associated DB proxy. Default DB proxy endpoints always have read/write capability. Other endpoints that you associate with the DB proxy can be either read/write or read-only.
	IsDefault: bool
}
