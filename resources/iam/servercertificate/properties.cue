package servercertificate

import "strings"

#Properties: {
	CertificateBody?: string & strings.MinRunes(1) & strings.MaxRunes(16384)
	CertificateChain?: string & strings.MinRunes(1) & strings.MaxRunes(2097152)
	Path?: string & strings.MinRunes(1) & strings.MaxRunes(512)
	PrivateKey?: string & strings.MinRunes(1) & strings.MaxRunes(16384)
	ServerCertificateName?: string & =~"[\\w+=,.@-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
