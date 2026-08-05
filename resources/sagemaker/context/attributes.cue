package context

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the context.
	Arn: string & =~"^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:context/" & strings.MaxRunes(256)
	// When the context was created.
	CreationTime: string
	// When the context was last modified.
	LastModifiedTime: string
}
