package domainname

import "strings"

#Properties: {
	CertificateArn: string & =~"^arn:[a-z-]*:acm:[a-z0-9-]*:\\d{12}:certificate/[0-9A-Za-z_/-]*$" & strings.MinRunes(3) & strings.MaxRunes(2048)
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(255)
	DomainName: string & =~"^(\\*[a-z\\d-]*\\.)?([a-z\\d-]+\\.)+[a-z\\d-]+$" & strings.MinRunes(1) & strings.MaxRunes(253)
	Tags?: #Tags
}

#Tag: {
	// A string used to identify this tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[ a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for this tag. You can specify a maximum of 256 characters for a tag value.
	Value: string & =~"^[\\s\\w+-=\\.:/@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
