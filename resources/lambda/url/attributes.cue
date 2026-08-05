package url

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The generated url for this resource.
	FunctionUrl: string
	// The full Amazon Resource Name (ARN) of the function associated with the Function URL.
	FunctionArn: string & =~"^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:((?!\\d+)[0-9a-zA-Z-_]+))?$"
}
