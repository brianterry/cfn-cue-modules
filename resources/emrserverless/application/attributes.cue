package application

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the EMR Serverless Application.
	Arn: string & =~"^arn:(aws[a-zA-Z0-9-]*):emr-serverless:.+:(\\d{12}):\\/applications\\/[0-9a-zA-Z]+$"
	// The ID of the EMR Serverless Application.
	ApplicationId: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
