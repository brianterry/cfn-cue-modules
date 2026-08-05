package certificate

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Specifies the unique Amazon Resource Name (ARN) for the agreement.
	Arn: string & =~"arn:.*" & strings.MinRunes(20) & strings.MaxRunes(1600)
	// A unique identifier for the certificate.
	CertificateId: string & =~"^cert-([0-9a-f]{17})$" & strings.MinRunes(22) & strings.MaxRunes(22)
	// A status description for the certificate.
	Status: "ACTIVE" | "PENDING" | "INACTIVE"
	// Describing the type of certificate. With or without a private key.
	Type: "CERTIFICATE" | "CERTIFICATE_WITH_PRIVATE_KEY"
	// Specifies Certificate's serial.
	Serial: string & =~"^[0-9a-fA-F{}:?]*$" & strings.MinRunes(0) & strings.MaxRunes(48)
	// Specifies the not after date for the certificate.
	NotAfterDate: string
	// Specifies the not before date for the certificate.
	NotBeforeDate: string
}
