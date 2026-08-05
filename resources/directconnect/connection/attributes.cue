package connection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the connection.
	ConnectionArn: string & =~"^arn:aws[a-z-]*:directconnect:[a-z0-9-]+:[0-9]{12}:dxcon/dxcon-[a-z0-9]{8,21}$"
	// The ID of the connection.
	ConnectionId: string & =~"^dxcon-[a-z0-9]{8,21}$"
	// The state of the connection.
	ConnectionState: string & =~"^(ordering|requested|pending|available|down|deleting|deleted|rejected|unknown)$"
}
