package dataset

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the dataset.
	Arn: string & =~"^arn:aws:scn(?::([a-z0-9-]+):([0-9]+):instance)?/([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})[-_./A-Za-z0-9]*$" & strings.MinRunes(20) & strings.MaxRunes(1011)
	// The creation time of the dataset.
	CreatedTime: string
	// The last modified time of the dataset.
	LastModifiedTime: string
}
