package profile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Specifies the unique Amazon Resource Name (ARN) for the profile.
	Arn: string & =~"arn:.*" & strings.MinRunes(20) & strings.MaxRunes(1600)
	// A unique identifier for the profile
	ProfileId: string & =~"^p-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
}
