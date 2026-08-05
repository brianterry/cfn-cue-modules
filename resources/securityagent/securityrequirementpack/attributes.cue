package securityrequirementpack

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier of the security requirement pack
	PackId: string & =~"^(srp)-(am|cm)-[a-zA-Z0-9\\-]+$" & strings.MinRunes(8) & strings.MaxRunes(64)
}
