package space

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The space Amazon Resource Name (ARN).
	SpaceArn: string & =~"arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:space/.*" & strings.MaxRunes(256)
	Url: string & strings.MaxRunes(1024)
}
