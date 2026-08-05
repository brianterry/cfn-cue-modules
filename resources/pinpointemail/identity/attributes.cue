package identity

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	IdentityDNSRecordName1: string
	IdentityDNSRecordValue1: string
	IdentityDNSRecordName3: string
	IdentityDNSRecordValue2: string
	IdentityDNSRecordName2: string
	IdentityDNSRecordValue3: string
	Id: string
}
