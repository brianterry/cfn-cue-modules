package acmeendpoint

import "strings"

#Properties: {
	// The authorization behavior for the ACME endpoint.
	AuthorizationBehavior: string
	CertificateAuthority: #CertificateAuthority
	// Tags applied to certificates issued via this endpoint.
	CertificateTags?: [...#Tag]
	// Whether contact information is required for the ACME endpoint.
	Contact?: string
	// Tags associated with the ACME endpoint.
	Tags?: [...{
		Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
}

#CertificateAuthority: {
	PublicCertificateAuthority: #PublicCertificateAuthority
}

#PublicCertificateAuthority: {
	// The allowed key algorithms for certificates issued via this endpoint.
	AllowedKeyAlgorithms?: [...string]
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
