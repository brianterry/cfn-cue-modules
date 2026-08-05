package flow

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN), a unique identifier for any AWS resource, of the flow.
	FlowArn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:flow:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"
	// The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current AWS.(ReadOnly)
	FlowAvailabilityZone: string
	// The source of the flow.
	Source: #Source
	// The IP address from which video will be sent to output destinations.
	EgressIp: string
	// A prefix for the names of the NDI sources that the flow creates.(ReadOnly)
	FlowNdiMachineName: string
}
