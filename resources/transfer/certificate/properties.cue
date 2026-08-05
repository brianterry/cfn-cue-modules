package certificate

import "strings"

#Properties: {
	// Specifies the active date for the certificate.
	ActiveDate?: string
	// Specifies the certificate body to be imported.
	Certificate: string & =~"^[\\t\\n\\r\\u0020-\\u00FF]+$" & strings.MinRunes(1) & strings.MaxRunes(16384)
	// Specifies the certificate chain to be imported.
	CertificateChain?: string & =~"^[\\t\\n\\r\\u0020-\\u00FF]+$" & strings.MinRunes(1) & strings.MaxRunes(2097152)
	// A textual description for the certificate.
	Description?: string & =~"^[\\u0021-\\u007E]+$" & strings.MinRunes(1) & strings.MaxRunes(200)
	// Specifies the inactive date for the certificate.
	InactiveDate?: string
	// Specifies the private key for the certificate.
	PrivateKey?: string & =~"^[\\t\\n\\r\\u0020-\\u00FF]+$" & strings.MinRunes(1) & strings.MaxRunes(16384)
	// Key-value pairs that can be used to group and search for certificates. Tags are metadata attached to certificates for any purpose.
	Tags?: [...#Tag]
	// Specifies the usage type for the certificate.
	Usage: "SIGNING" | "ENCRYPTION" | "TLS"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
