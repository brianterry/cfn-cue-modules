package routeroutput

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerOutput:[a-z0-9]{12}$"
	// The timestamp when the router output was created.
	CreatedAt: string
	// The unique identifier of the router output.
	Id: string
	// The IP address of the router output.
	IpAddress: string
	MaintenanceType: #MaintenanceType
	OutputType: #RouterOutputType
	RoutedState: #RouterOutputRoutedState
	State: #RouterOutputState
	// The timestamp when the router output was last updated.
	UpdatedAt: string
}
