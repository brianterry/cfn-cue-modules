package partneraccount

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// PartnerAccount arn. Returned after successful create.
	Arn: string
	// The fingerprint of the Sidewalk application server private key.
	Fingerprint: string
}
