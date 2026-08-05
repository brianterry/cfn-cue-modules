package cacertificate

import "strings"

#Properties: {
	AutoRegistrationStatus?: "ENABLE" | "DISABLE"
	CACertificatePem: string & =~"[\\s\\S]*" & strings.MinRunes(1) & strings.MaxRunes(65536)
	CertificateMode?: "DEFAULT" | "SNI_ONLY"
	RegistrationConfig?: #RegistrationConfig
	RemoveAutoRegistration?: bool
	Status: "ACTIVE" | "INACTIVE"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The private key verification certificate.
	VerificationCertificatePem?: string & =~"[\\s\\S]*" & strings.MinRunes(1) & strings.MaxRunes(65536)
}

#RegistrationConfig: {
	RoleArn?: string & =~"arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	TemplateBody?: string & =~"[\\s\\S]*" & strings.MinRunes(0) & strings.MaxRunes(10240)
	TemplateName?: string & =~"^[0-9A-Za-z_-]+$" & strings.MinRunes(1) & strings.MaxRunes(36)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
