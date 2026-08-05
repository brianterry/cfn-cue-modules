package template

import "strings"

#Properties: {
	ConnectorArn: string & =~"^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$" & strings.MinRunes(5) & strings.MaxRunes(200)
	Definition: #TemplateDefinition
	Name: string & =~"^(?!^\\s+$)((?![\\x5c'\\x2b,;<=>#\\x22])([\\x20-\\x7E]))+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	ReenrollAllCertificateHolders?: bool
	Tags?: #Tags
}

#ApplicationPolicies: {
	Critical?: bool
	Policies: [...#ApplicationPolicy]
}

#CertificateValidity: {
	RenewalPeriod: #ValidityPeriod
	ValidityPeriod: #ValidityPeriod
}

#EnrollmentFlagsV2: {
	EnableKeyReuseOnNtTokenKeysetStorageFull?: bool
	IncludeSymmetricAlgorithms?: bool
	NoSecurityExtension?: bool
	RemoveInvalidCertificateFromPersonalStore?: bool
	UserInteractionRequired?: bool
}

#EnrollmentFlagsV3: {
	EnableKeyReuseOnNtTokenKeysetStorageFull?: bool
	IncludeSymmetricAlgorithms?: bool
	NoSecurityExtension?: bool
	RemoveInvalidCertificateFromPersonalStore?: bool
	UserInteractionRequired?: bool
}

#EnrollmentFlagsV4: {
	EnableKeyReuseOnNtTokenKeysetStorageFull?: bool
	IncludeSymmetricAlgorithms?: bool
	NoSecurityExtension?: bool
	RemoveInvalidCertificateFromPersonalStore?: bool
	UserInteractionRequired?: bool
}

#ExtensionsV2: {
	ApplicationPolicies?: #ApplicationPolicies
	KeyUsage: #KeyUsage
}

#ExtensionsV3: {
	ApplicationPolicies?: #ApplicationPolicies
	KeyUsage: #KeyUsage
}

#ExtensionsV4: {
	ApplicationPolicies?: #ApplicationPolicies
	KeyUsage: #KeyUsage
}

#GeneralFlagsV2: {
	AutoEnrollment?: bool
	MachineType?: bool
}

#GeneralFlagsV3: {
	AutoEnrollment?: bool
	MachineType?: bool
}

#GeneralFlagsV4: {
	AutoEnrollment?: bool
	MachineType?: bool
}

#KeyUsage: {
	Critical?: bool
	UsageFlags: #KeyUsageFlags
}

#KeyUsageFlags: {
	DataEncipherment?: bool
	DigitalSignature?: bool
	KeyAgreement?: bool
	KeyEncipherment?: bool
	NonRepudiation?: bool
}

#KeyUsagePropertyFlags: {
	Decrypt?: bool
	KeyAgreement?: bool
	Sign?: bool
}

#PrivateKeyAttributesV2: {
	CryptoProviders?: [...string & strings.MinRunes(1) & strings.MaxRunes(100)]
	KeySpec: #KeySpec
	MinimalKeyLength: number & >=1
}

#PrivateKeyAttributesV3: {
	Algorithm: #PrivateKeyAlgorithm
	CryptoProviders?: [...string & strings.MinRunes(1) & strings.MaxRunes(100)]
	KeySpec: #KeySpec
	KeyUsageProperty: #KeyUsageProperty
	MinimalKeyLength: number & >=1
}

#PrivateKeyAttributesV4: {
	Algorithm?: #PrivateKeyAlgorithm
	CryptoProviders?: [...string & strings.MinRunes(1) & strings.MaxRunes(100)]
	KeySpec: #KeySpec
	KeyUsageProperty?: #KeyUsageProperty
	MinimalKeyLength: number & >=1
}

#PrivateKeyFlagsV2: {
	ClientVersion: #ClientCompatibilityV2
	ExportableKey?: bool
	StrongKeyProtectionRequired?: bool
}

#PrivateKeyFlagsV3: {
	ClientVersion: #ClientCompatibilityV3
	ExportableKey?: bool
	RequireAlternateSignatureAlgorithm?: bool
	StrongKeyProtectionRequired?: bool
}

#PrivateKeyFlagsV4: {
	ClientVersion: #ClientCompatibilityV4
	ExportableKey?: bool
	RequireAlternateSignatureAlgorithm?: bool
	RequireSameKeyRenewal?: bool
	StrongKeyProtectionRequired?: bool
	UseLegacyProvider?: bool
}

#SubjectNameFlagsV2: {
	RequireCommonName?: bool
	RequireDirectoryPath?: bool
	RequireDnsAsCn?: bool
	RequireEmail?: bool
	SanRequireDirectoryGuid?: bool
	SanRequireDns?: bool
	SanRequireDomainDns?: bool
	SanRequireEmail?: bool
	SanRequireSpn?: bool
	SanRequireUpn?: bool
}

#SubjectNameFlagsV3: {
	RequireCommonName?: bool
	RequireDirectoryPath?: bool
	RequireDnsAsCn?: bool
	RequireEmail?: bool
	SanRequireDirectoryGuid?: bool
	SanRequireDns?: bool
	SanRequireDomainDns?: bool
	SanRequireEmail?: bool
	SanRequireSpn?: bool
	SanRequireUpn?: bool
}

#SubjectNameFlagsV4: {
	RequireCommonName?: bool
	RequireDirectoryPath?: bool
	RequireDnsAsCn?: bool
	RequireEmail?: bool
	SanRequireDirectoryGuid?: bool
	SanRequireDns?: bool
	SanRequireDomainDns?: bool
	SanRequireEmail?: bool
	SanRequireSpn?: bool
	SanRequireUpn?: bool
}

#TemplateV2: {
	CertificateValidity: #CertificateValidity
	EnrollmentFlags: #EnrollmentFlagsV2
	Extensions: #ExtensionsV2
	GeneralFlags: #GeneralFlagsV2
	PrivateKeyAttributes: #PrivateKeyAttributesV2
	PrivateKeyFlags: #PrivateKeyFlagsV2
	SubjectNameFlags: #SubjectNameFlagsV2
	SupersededTemplates?: [...string & =~"^(?!^\\s+$)((?![\\x5c'\\x2b,;<=>#\\x22])([\\x20-\\x7E]))+$" & strings.MinRunes(1) & strings.MaxRunes(64)]
}

#TemplateV3: {
	CertificateValidity: #CertificateValidity
	EnrollmentFlags: #EnrollmentFlagsV3
	Extensions: #ExtensionsV3
	GeneralFlags: #GeneralFlagsV3
	HashAlgorithm: #HashAlgorithm
	PrivateKeyAttributes: #PrivateKeyAttributesV3
	PrivateKeyFlags: #PrivateKeyFlagsV3
	SubjectNameFlags: #SubjectNameFlagsV3
	SupersededTemplates?: [...string & =~"^(?!^\\s+$)((?![\\x5c'\\x2b,;<=>#\\x22])([\\x20-\\x7E]))+$" & strings.MinRunes(1) & strings.MaxRunes(64)]
}

#TemplateV4: {
	CertificateValidity: #CertificateValidity
	EnrollmentFlags: #EnrollmentFlagsV4
	Extensions: #ExtensionsV4
	GeneralFlags: #GeneralFlagsV4
	HashAlgorithm?: #HashAlgorithm
	PrivateKeyAttributes: #PrivateKeyAttributesV4
	PrivateKeyFlags: #PrivateKeyFlagsV4
	SubjectNameFlags: #SubjectNameFlagsV4
	SupersededTemplates?: [...string & =~"^(?!^\\s+$)((?![\\x5c'\\x2b,;<=>#\\x22])([\\x20-\\x7E]))+$" & strings.MinRunes(1) & strings.MaxRunes(64)]
}

#ValidityPeriod: {
	Period: number & >=1 & <=8.766e+06
	PeriodType: #ValidityPeriodType
}
