package rungroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:.+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	CreationTime: string
	Id: string & =~"^[0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(18)
}
