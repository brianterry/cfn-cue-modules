package custommetric

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Number (ARN) of the custom metric.
	MetricArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}
