package rolealias

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	RoleAliasArn: string & =~"[\\w=,@-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}
