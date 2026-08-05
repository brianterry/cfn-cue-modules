package metricstream

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Resource Name of the metric stream.
	Arn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The date of creation of the metric stream.
	CreationDate: string | string
	// The date of the last update of the metric stream.
	LastUpdateDate: string | string
	// Displays the state of the Metric Stream.
	State: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
