package emailidentity

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	DkimDNSTokenName1: string
	DkimDNSTokenName2: string
	DkimDNSTokenName3: string
	DkimDNSTokenValue1: string
	DkimDNSTokenValue2: string
	DkimDNSTokenValue3: string
}
