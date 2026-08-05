package codesigningconfig

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A unique identifier for CodeSigningConfig resource
	CodeSigningConfigId: string & =~"csc-[a-zA-Z0-9-_\\.]{17}"
	// A unique Arn for CodeSigningConfig resource
	CodeSigningConfigArn: string & =~"arn:(aws[a-zA-Z-]*)?:lambda:(eusc-)?[a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:\\d{12}:code-signing-config:csc-[a-z0-9]{17}"
}
