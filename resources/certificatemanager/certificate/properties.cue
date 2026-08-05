package certificate

#Properties: {
	// The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used to issue the certificate.
	CertificateAuthorityArn?: string
	// Specifies whether the certificate can be exported. ENABLED allows the certificate to be exported, DISABLED prevents export.
	CertificateExport?: "ENABLED" | "DISABLED"
	// You can opt out of certificate transparency logging by specifying the DISABLED option. Opt in by specifying ENABLED.
	CertificateTransparencyLoggingPreference?: "ENABLED" | "DISABLED"
	// The fully qualified domain name (FQDN), such as www.example.com, with which you want to secure an ACM certificate
	DomainName: string
	// Domain information that domain name registrars use to verify your identity.
	DomainValidationOptions?: [...#DomainValidationOption]
	// Specifies the algorithm of the public and private key pair that your certificate uses to encrypt data.
	KeyAlgorithm?: string
	// Additional FQDNs to be included in the Subject Alternative Name extension of the ACM certificate.
	SubjectAlternativeNames?: [...string]
	// Key-value pairs that can identify the certificate.
	Tags?: [...#Tag]
	// The method you want to use to validate that you own or control the domain associated with a public certificate. Valid values are DNS, EMAIL or HTTP
	ValidationMethod?: string
}

#DomainValidationOption: {
	DomainName?: string
	HostedZoneId?: string
	ValidationDomain?: string
}

#Tag: {
	// The tag's key.
	Key: string
	// The tag's value.
	Value: string
}
