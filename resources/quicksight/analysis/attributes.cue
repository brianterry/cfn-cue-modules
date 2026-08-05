package analysis

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) of the analysis.</p>
	Arn: string
	// <p>The time that the analysis was created.</p>
	CreatedTime: string
	// <p>The ARNs of the datasets of the analysis.</p>
	DataSetArns: [...string]
	// <p>The time that the analysis was last updated.</p>
	LastUpdatedTime: string
}
