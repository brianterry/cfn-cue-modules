package truststorerevocation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID associated with the revocation.
	RevocationId: int
	// The data associated with a trust store revocation
	TrustStoreRevocations: [...#TrustStoreRevocation]
}
