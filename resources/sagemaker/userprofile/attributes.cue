package userprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The user profile Amazon Resource Name (ARN).
	UserProfileArn: string & =~"arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:user-profile/.*" & strings.MaxRunes(256)
}
