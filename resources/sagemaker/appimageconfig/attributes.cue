package appimageconfig

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the AppImageConfig.
	AppImageConfigArn: string & =~"arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:app-image-config/.*" & strings.MinRunes(1) & strings.MaxRunes(256)
}
