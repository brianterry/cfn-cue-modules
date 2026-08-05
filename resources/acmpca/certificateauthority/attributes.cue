package certificateauthority

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the certificate authority.
	Arn: #Arn
	// The base64 PEM-encoded certificate signing request (CSR) for your certificate authority certificate.
	CertificateSigningRequest: string
}
