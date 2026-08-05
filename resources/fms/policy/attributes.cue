package policy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: #ResourceArn
	Id: string & =~"^[a-z0-9A-Z-]{36}$" & strings.MinRunes(36) & strings.MaxRunes(36)
}
