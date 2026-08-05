package domainnameaccessassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The amazon resource name (ARN) of the domain name access association resource.
	DomainNameAccessAssociationArn: string
}
