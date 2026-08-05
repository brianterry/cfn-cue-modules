package profile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the resolver profile.
	Arn: string
	// The ID of the profile.
	Id: string
	// The id of the creator request
	ClientToken: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The sharing status of the profile.
	ShareStatus: "NOT_SHARED" | "SHARED_WITH_ME" | "SHARED_BY_ME"
}
