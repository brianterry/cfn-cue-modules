package profile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CreatedAt: string
	LogGroupName: string & strings.MinRunes(1) & strings.MaxRunes(512)
	ModifiedAt: string
	ProfileArn: string & strings.MinRunes(1) & strings.MaxRunes(255)
	ProfileId: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}
