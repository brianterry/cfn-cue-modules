package identitysource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	IdentitySourceArn: #IdentitySourceArn
	IdentitySourceType: string
	IdentitySourceParameters: #IdentitySourceParameters
	CreationTime: string
	Status: string
	StatusCode: string
	StatusMessage: string
}
