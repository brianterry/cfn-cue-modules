package segment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"arn:[^:]*:[^:]*:[^:]*:[^:]*:segment/[-a-zA-Z0-9._]*" & strings.MinRunes(0) & strings.MaxRunes(2048)
}
