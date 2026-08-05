package securityconfig

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the security config
	Id: string & strings.MinRunes(1) & strings.MaxRunes(100)
	IamIdentityCenterOptions: #IamIdentityCenterConfigOptions
}
