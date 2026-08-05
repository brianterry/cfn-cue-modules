package sink

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon resource name (ARN) of the ObservabilityAccessManager Sink
	Arn: string & strings.MaxRunes(2048)
}
