package securityconfiguration

import "strings"

#Properties: {
	// Container provider for the security configuration.
	ContainerProvider?: #ContainerProvider
	// The name of the security configuration.
	Name?: string & =~"^[a-zA-Z0-9\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Security configuration input for the security configuration.
	SecurityConfigurationData: #SecurityConfigurationData
	// An array of key-value pairs to apply to this security configuration.
	Tags?: [...#Tag]
}

#AtRestEncryptionConfiguration: {
	LocalDiskEncryptionConfiguration?: #LocalDiskEncryptionConfiguration
	S3EncryptionConfiguration?: #S3EncryptionConfiguration
}

#AuthenticationConfiguration: {
	IAMConfiguration?: #IAMConfiguration
	IdentityCenterConfiguration?: #IdentityCenterConfiguration
}

#AuthorizationConfiguration: {
	LakeFormationConfiguration?: #LakeFormationConfiguration
}

#ContainerInfo: {
	EksInfo?: #EksInfo
}

#ContainerProvider: {
	// The container provider ID.
	Id: string
	Info?: #ContainerInfo
	// The container provider type.
	Type: "EKS"
}

#EksInfo: {
	// The EKS namespace.
	Namespace?: string
}

#EncryptionConfiguration: {
	AtRestEncryptionConfiguration?: #AtRestEncryptionConfiguration
	InTransitEncryptionConfiguration?: #InTransitEncryptionConfiguration
}

#IAMConfiguration: {
	// The system role ARN.
	SystemRole?: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):iam::\\d{12}:role/.+$"
}

#IdentityCenterConfiguration: {
	// Whether to enable Identity Center integration.
	EnableIdentityCenter?: bool
	// Whether Identity Center application assignment is required.
	IdentityCenterApplicationAssignmentRequired?: bool
	// The ARN of the Identity Center instance.
	IdentityCenterInstanceARN?: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"
}

#InTransitEncryptionConfiguration: {
	TLSCertificateConfiguration?: #TLSCertificateConfiguration
}

#LakeFormationConfiguration: {
	// The session tag to authorize Lake Formation access.
	AuthorizedSessionTagValue?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// Whether query access control is enabled.
	QueryAccessControlEnabled?: bool
	// The ARN of the query engine role.
	QueryEngineRoleArn?: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):iam::\\d{12}:role/.+$"
	SecureNamespaceInfo?: #SecureNamespaceInfo
}

#LocalDiskEncryptionConfiguration: {
	// The AWS KMS key ID.
	AwsKmsKeyId?: string
	// The encryption key provider type.
	EncryptionKeyProviderType?: "AwsKms"
}

#S3EncryptionConfiguration: {
	// The S3 encryption option.
	EncryptionOption?: "SSE-S3" | "SSE-KMS" | "CSE-KMS"
	// The KMS key ID for encryption.
	KMSKeyId?: string
}

#SecureNamespaceInfo: {
	// The ID of the cluster.
	ClusterId?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The namespace.
	Namespace?: string & strings.MinRunes(1) & strings.MaxRunes(63)
}

#SecurityConfigurationData: {
	AuthenticationConfiguration?: #AuthenticationConfiguration
	AuthorizationConfiguration?: #AuthorizationConfiguration
	EncryptionConfiguration?: #EncryptionConfiguration
}

#TLSCertificateConfiguration: {
	// The certificate provider type.
	CertificateProviderType?: "PEM"
	// The ARN of the secret containing the private key.
	PrivateKeySecretArn?: string
	// The ARN of the secret containing the public key.
	PublicKeySecretArn?: string
}

#Tag: {
	// The key name of the tag.
	Key: string
	// The value for the tag.
	Value: string
}
