package domain

import "strings"

#Properties: {
	AppId: string & =~"d[a-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(20)
	AutoSubDomainCreationPatterns?: [...string & =~"(?s).+" & strings.MinRunes(1) & strings.MaxRunes(2048)]
	AutoSubDomainIAMRole?: string & =~"^$|^arn:.+:iam::\\d{12}:role.+" & strings.MaxRunes(1000)
	CertificateSettings?: #CertificateSettings
	DomainName: string & =~"^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])(\\.)?$" & strings.MaxRunes(255)
	EnableAutoSubDomain?: bool
	SubDomainSettings: [...#SubDomainSetting]
}

#Certificate: {
	CertificateArn?: string & =~"\"^arn:aws:acm:[a-z0-9-]+:\\d{12}:certificate\\/.+$\""
	CertificateType?: "AMPLIFY_MANAGED" | "CUSTOM"
	CertificateVerificationDNSRecord?: string & strings.MaxRunes(1000)
}

#CertificateSettings: {
	CertificateType?: "AMPLIFY_MANAGED" | "CUSTOM"
	CustomCertificateArn?: string & =~"^arn:aws:acm:[a-z0-9-]+:\\d{12}:certificate\\/.+$"
}

#SubDomainSetting: {
	BranchName: string & =~"(?s).+" & strings.MinRunes(1) & strings.MaxRunes(255)
	Prefix: string & =~"(?s).*" & strings.MaxRunes(255)
}
