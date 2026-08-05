package pipeline

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The version of the pipeline.
	Version: string
	// The Amazon Resource Name (ARN) of the pipeline.
	Arn: string & =~"arn:aws(-[\\w]+)*:codepipeline:[a-z0-9-]+:[0-9]{12}:.+"
}
