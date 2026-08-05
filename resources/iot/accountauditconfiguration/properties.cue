package accountauditconfiguration

import "strings"

#Properties: {
	// Your 12-digit account ID (used as the primary identifier for the CloudFormation resource).
	AccountId: string & strings.MinRunes(12) & strings.MaxRunes(12)
	AuditCheckConfigurations: #AuditCheckConfigurations
	AuditNotificationTargetConfigurations?: #AuditNotificationTargetConfigurations
	// The ARN of the role that grants permission to AWS IoT to access information about your devices, policies, certificates and other items as required when performing an audit.
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#AuditCheckConfiguration: {
	// True if the check is enabled.
	Enabled?: bool
}

#AuditCheckConfigurations: {
	AuthenticatedCognitoRoleOverlyPermissiveCheck?: #AuditCheckConfiguration
	CaCertificateExpiringCheck?: #AuditCheckConfiguration
	CaCertificateKeyQualityCheck?: #AuditCheckConfiguration
	ConflictingClientIdsCheck?: #AuditCheckConfiguration
	DeviceCertificateAgeCheck?: #DeviceCertAgeAuditCheckConfiguration
	DeviceCertificateExpiringCheck?: #DeviceCertExpirationAuditCheckConfiguration
	DeviceCertificateKeyQualityCheck?: #AuditCheckConfiguration
	DeviceCertificateSharedCheck?: #AuditCheckConfiguration
	IntermediateCaRevokedForActiveDeviceCertificatesCheck?: #AuditCheckConfiguration
	IoTPolicyPotentialMisConfigurationCheck?: #AuditCheckConfiguration
	IotPolicyOverlyPermissiveCheck?: #AuditCheckConfiguration
	IotRoleAliasAllowsAccessToUnusedServicesCheck?: #AuditCheckConfiguration
	IotRoleAliasOverlyPermissiveCheck?: #AuditCheckConfiguration
	LoggingDisabledCheck?: #AuditCheckConfiguration
	RevokedCaCertificateStillActiveCheck?: #AuditCheckConfiguration
	RevokedDeviceCertificateStillActiveCheck?: #AuditCheckConfiguration
	UnauthenticatedCognitoRoleOverlyPermissiveCheck?: #AuditCheckConfiguration
}

#AuditNotificationTarget: {
	// True if notifications to the target are enabled.
	Enabled?: bool
	// The ARN of the role that grants permission to send notifications to the target.
	RoleArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The ARN of the target (SNS topic) to which audit notifications are sent.
	TargetArn?: string & strings.MaxRunes(2048)
}

#AuditNotificationTargetConfigurations: {
	Sns?: #AuditNotificationTarget
}

#CertAgeCheckCustomConfiguration: {
	CertAgeThresholdInDays?: #ConfigValue
}

#CertExpirationCheckCustomConfiguration: {
	CertExpirationThresholdInDays?: #ConfigValue
}

#DeviceCertAgeAuditCheckConfiguration: {
	Configuration?: #CertAgeCheckCustomConfiguration
	// True if the check is enabled.
	Enabled?: bool
}

#DeviceCertExpirationAuditCheckConfiguration: {
	Configuration?: #CertExpirationCheckCustomConfiguration
	// True if the check is enabled.
	Enabled?: bool
}
