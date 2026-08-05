package template

import "strings"

#Properties: {
	ConnectorArn: string & =~"^arn:[\\w-]+:pca-connector-ad:[\\w-]+:[0-9]+:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$" & strings.MinRunes(5) & strings.MaxRunes(200)
	Definition: #TemplateDefinition
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
	ReenrollAllCertificateHolders?: bool
	Tags?: #Tags
}

#ApplicationPolicies: {
	Critical?: bool
	Policies: [...#ApplicationPolicy]
}

#ApplicationPolicy: {
	PolicyType: #ApplicationPolicyType
} | {
	PolicyObjectIdentifier: string & =~"^([0-2])\\.([0-9]|([0-3][0-9]))(\\.([0-9]+)){0,126}$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#ApplicationPolicyType: "ALL_APPLICATION_POLICIES" | "ANY_PURPOSE" | "ATTESTATION_IDENTITY_KEY_CERTIFICATE" | "CERTIFICATE_REQUEST_AGENT" | "CLIENT_AUTHENTICATION" | "CODE_SIGNING" | "CTL_USAGE" | "DIGITAL_RIGHTS" | "DIRECTORY_SERVICE_EMAIL_REPLICATION" | "DISALLOWED_LIST" | "DNS_SERVER_TRUST" | "DOCUMENT_ENCRYPTION" | "DOCUMENT_SIGNING" | "DYNAMIC_CODE_GENERATOR" | "EARLY_LAUNCH_ANTIMALWARE_DRIVER" | "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION" | "ENCLAVE" | "ENCRYPTING_FILE_SYSTEM" | "ENDORSEMENT_KEY_CERTIFICATE" | "FILE_RECOVERY" | "HAL_EXTENSION" | "IP_SECURITY_END_SYSTEM" | "IP_SECURITY_IKE_INTERMEDIATE" | "IP_SECURITY_TUNNEL_TERMINATION" | "IP_SECURITY_USER" | "ISOLATED_USER_MODE" | "KDC_AUTHENTICATION" | "KERNEL_MODE_CODE_SIGNING" | "KEY_PACK_LICENSES" | "KEY_RECOVERY" | "KEY_RECOVERY_AGENT" | "LICENSE_SERVER_VERIFICATION" | "LIFETIME_SIGNING" | "MICROSOFT_PUBLISHER" | "MICROSOFT_TIME_STAMPING" | "MICROSOFT_TRUST_LIST_SIGNING" | "OCSP_SIGNING" | "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION" | "PLATFORM_CERTIFICATE" | "PREVIEW_BUILD_SIGNING" | "PRIVATE_KEY_ARCHIVAL" | "PROTECTED_PROCESS_LIGHT_VERIFICATION" | "PROTECTED_PROCESS_VERIFICATION" | "QUALIFIED_SUBORDINATION" | "REVOKED_LIST_SIGNER" | "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION" | "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION" | "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL" | "ROOT_LIST_SIGNER" | "SECURE_EMAIL" | "SERVER_AUTHENTICATION" | "SMART_CARD_LOGIN" | "SPC_ENCRYPTED_DIGEST_RETRY_COUNT" | "SPC_RELAXED_PE_MARKER_CHECK" | "TIME_STAMPING" | "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION" | "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION" | "WINDOWS_HARDWARE_DRIVER_VERIFICATION" | "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION" | "WINDOWS_KITS_COMPONENT" | "WINDOWS_RT_VERIFICATION" | "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION" | "WINDOWS_STORE" | "WINDOWS_SYSTEM_COMPONENT_VERIFICATION" | "WINDOWS_TCB_COMPONENT" | "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT" | "WINDOWS_UPDATE"

#CertificateValidity: {
	RenewalPeriod: #ValidityPeriod
	ValidityPeriod: #ValidityPeriod
}

#ClientCompatibilityV2: "WINDOWS_SERVER_2003" | "WINDOWS_SERVER_2008" | "WINDOWS_SERVER_2008_R2" | "WINDOWS_SERVER_2012" | "WINDOWS_SERVER_2012_R2" | "WINDOWS_SERVER_2016"

#ClientCompatibilityV3: "WINDOWS_SERVER_2008" | "WINDOWS_SERVER_2008_R2" | "WINDOWS_SERVER_2012" | "WINDOWS_SERVER_2012_R2" | "WINDOWS_SERVER_2016"

#ClientCompatibilityV4: "WINDOWS_SERVER_2012" | "WINDOWS_SERVER_2012_R2" | "WINDOWS_SERVER_2016"

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

#HashAlgorithm: "SHA256" | "SHA384" | "SHA512"

#KeySpec: "KEY_EXCHANGE" | "SIGNATURE"

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

#KeyUsageProperty: {
	PropertyType: #KeyUsagePropertyType
} | {
	PropertyFlags: #KeyUsagePropertyFlags
}

#KeyUsagePropertyFlags: {
	Decrypt?: bool
	KeyAgreement?: bool
	Sign?: bool
}

#KeyUsagePropertyType: "ALL"

#PrivateKeyAlgorithm: "RSA" | "ECDH_P256" | "ECDH_P384" | "ECDH_P521"

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

#Tags: {...}

#TemplateDefinition: {
	TemplateV2: #TemplateV2
} | {
	TemplateV3: #TemplateV3
} | {
	TemplateV4: #TemplateV4
}

#TemplateV2: {
	CertificateValidity: #CertificateValidity
	EnrollmentFlags: #EnrollmentFlagsV2
	Extensions: #ExtensionsV2
	GeneralFlags: #GeneralFlagsV2
	PrivateKeyAttributes: #PrivateKeyAttributesV2
	PrivateKeyFlags: #PrivateKeyFlagsV2
	SubjectNameFlags: #SubjectNameFlagsV2
	SupersededTemplates?: [...string & strings.MinRunes(1) & strings.MaxRunes(64)]
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
	SupersededTemplates?: [...string & strings.MinRunes(1) & strings.MaxRunes(64)]
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
	SupersededTemplates?: [...string & strings.MinRunes(1) & strings.MaxRunes(64)]
}

#ValidityPeriod: {
	Period: number & >=1 & <=8.766e+06
	PeriodType: #ValidityPeriodType
}

#ValidityPeriodType: "HOURS" | "DAYS" | "WEEKS" | "MONTHS" | "YEARS"
