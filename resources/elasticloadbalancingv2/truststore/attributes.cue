package truststore

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the trust store.
	TrustStoreArn: string
	// The status of the trust store, could be either of ACTIVE or CREATING.
	Status: string
	// The number of certificates associated with the trust store.
	NumberOfCaCertificates: int
}
