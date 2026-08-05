package certificateauthorityactivation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The complete certificate chain, including the Certificate Authority certificate.
	CompleteCertificateChain: string
}
