package routerinput

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:routerInput:[a-z0-9]{12}$"
	ContentQualityAnalysisType: #RouterContentQualityAnalysisType
	// The timestamp when the router input was created.
	CreatedAt: string
	// The unique identifier of the router input.
	Id: string
	InputType: #RouterInputType
	// The IP address of the router input.
	IpAddress: string
	MaintenanceType: #MaintenanceType
	// The number of router outputs associated with the router input.
	RoutedOutputs: int
	State: #RouterInputState
	// The timestamp when the router input was last updated.
	UpdatedAt: string
}
