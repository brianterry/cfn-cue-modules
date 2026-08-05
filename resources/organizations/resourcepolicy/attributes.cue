package resourcepolicy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier (ID) associated with this resource policy.
	Id: string & =~"^rp-[0-9a-zA-Z_]{4,128}$" & strings.MaxRunes(131)
	// The Amazon Resource Name (ARN) of the resource policy.
	Arn: string & =~"^arn:aws.*:organizations::\\d{12}:resourcepolicy\\/o-[a-z0-9]{10,32}\\/rp-[0-9a-zA-Z_]{4,128}"
}
