package dictionary

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string
	Id: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(19)
}
