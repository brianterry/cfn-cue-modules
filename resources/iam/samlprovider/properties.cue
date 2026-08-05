package samlprovider

import "strings"

#Properties: {
	// The private key from your external identity provider
	AddPrivateKey?: string & strings.MinRunes(1) & strings.MaxRunes(16384)
	// The encryption setting for the SAML provider
	AssertionEncryptionMode?: "Allowed" | "Required"
	Name?: string & =~"[\\w._-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	PrivateKeyList?: [...#SAMLPrivateKey]
	// The Key ID of the private key to remove
	RemovePrivateKey?: string & =~"[A-Z0-9]+" & strings.MinRunes(22) & strings.MaxRunes(64)
	SamlMetadataDocument?: string & strings.MinRunes(1000) & strings.MaxRunes(10000000)
	Tags?: [...#Tag]
}

#SAMLPrivateKey: {
	// The unique identifier for the SAML private key.
	KeyId: string & =~"[A-Z0-9]+" & strings.MinRunes(22) & strings.MaxRunes(64)
	// The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time </a> format, when the private key was uploaded.
	Timestamp: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
