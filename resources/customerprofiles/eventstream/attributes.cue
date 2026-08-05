package eventstream

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Details regarding the Kinesis stream.
	DestinationDetails: {
	Status: #Status
	Uri: #Uri
}
	// The timestamp of when the export was created.
	CreatedAt: string
	// The operational state of destination stream for export.
	State: "RUNNING" | "STOPPED"
	// A unique identifier for the event stream.
	EventStreamArn: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
