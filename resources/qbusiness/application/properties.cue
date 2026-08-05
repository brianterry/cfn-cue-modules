package application

import "strings"

#Properties: {
	AttachmentsConfiguration?: #AttachmentsConfiguration
	AutoSubscriptionConfiguration?: #AutoSubscriptionConfiguration
	ClientIdsForOIDC?: [...string & =~"^[a-zA-Z0-9_.:/()*?=-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)]
	Description?: string & =~"^[\\s\\S]*$" & strings.MinRunes(0) & strings.MaxRunes(1000)
	DisplayName: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(1000)
	EncryptionConfiguration?: #EncryptionConfiguration
	IamIdentityProviderArn?: string & =~"^arn:aws:iam::\\d{12}:(oidc-provider|saml-provider)/[a-zA-Z0-9_\\.\\/@\\-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	IdentityCenterInstanceArn?: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$" & strings.MinRunes(10) & strings.MaxRunes(1224)
	IdentityType?: #IdentityType
	PersonalizationConfiguration?: #PersonalizationConfiguration
	QAppsConfiguration?: #QAppsConfiguration
	QuickSightConfiguration?: #QuickSightConfiguration
	RoleArn?: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	Tags?: [...#Tag]
}

#AttachmentsConfiguration: {
	AttachmentsControlMode: #AttachmentsControlMode
}

#AutoSubscriptionConfiguration: {
	AutoSubscribe: #AutoSubscriptionStatus
	DefaultSubscriptionType?: #SubscriptionType
}

#EncryptionConfiguration: {
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#PersonalizationConfiguration: {
	PersonalizationControlMode: #PersonalizationControlMode
}

#QAppsConfiguration: {
	QAppsControlMode: #QAppsControlMode
}

#QuickSightConfiguration: {
	ClientNamespace: string & =~"^[a-zA-Z0-9._-]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
