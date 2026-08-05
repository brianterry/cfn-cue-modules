package userpool

import "strings"

#Properties: {
	AccountRecoverySetting?: #AccountRecoverySetting
	AdminCreateUserConfig?: #AdminCreateUserConfig
	AliasAttributes?: [...string]
	AutoVerifiedAttributes?: [...string]
	DeletionProtection?: string
	DeviceConfiguration?: #DeviceConfiguration
	EmailAuthenticationMessage?: string & strings.MinRunes(6) & strings.MaxRunes(20000)
	EmailAuthenticationSubject?: string & strings.MinRunes(1) & strings.MaxRunes(140)
	EmailConfiguration?: #EmailConfiguration
	EmailVerificationMessage?: string & strings.MinRunes(6) & strings.MaxRunes(20000)
	EmailVerificationSubject?: string & strings.MinRunes(1) & strings.MaxRunes(140)
	EnabledMfas?: [...string]
	IssuerConfiguration?: #IssuerConfiguration
	KeyConfiguration?: #KeyConfiguration
	LambdaConfig?: #LambdaConfig
	MfaConfiguration?: string
	Policies?: #Policies
	Schema?: [...#SchemaAttribute]
	SmsAuthenticationMessage?: string & strings.MinRunes(6) & strings.MaxRunes(140)
	SmsConfiguration?: #SmsConfiguration
	SmsVerificationMessage?: string & strings.MinRunes(6) & strings.MaxRunes(140)
	UserAttributeUpdateSettings?: #UserAttributeUpdateSettings
	UserPoolAddOns?: #UserPoolAddOns
	UserPoolName?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	UserPoolTags?: {...}
	UserPoolTier?: "LITE" | "ESSENTIALS" | "PLUS"
	UsernameAttributes?: [...string]
	UsernameConfiguration?: #UsernameConfiguration
	VerificationMessageTemplate?: #VerificationMessageTemplate
	WebAuthnFactorConfiguration?: "SINGLE_FACTOR" | "MULTI_FACTOR_WITH_USER_VERIFICATION"
	WebAuthnRelyingPartyID?: string & strings.MinRunes(1) & strings.MaxRunes(63)
	WebAuthnUserVerification?: string & strings.MinRunes(1) & strings.MaxRunes(9)
}

#AccountRecoverySetting: {
	RecoveryMechanisms?: [...#RecoveryOption]
}

#AdminCreateUserConfig: {
	AllowAdminCreateUserOnly?: bool
	InviteMessageTemplate?: #InviteMessageTemplate
	UnusedAccountValidityDays?: int
}

#AdvancedSecurityAdditionalFlows: {
	CustomAuthMode?: string
}

#CustomEmailSender: {
	LambdaArn?: string
	LambdaVersion?: string
}

#CustomSMSSender: {
	LambdaArn?: string
	LambdaVersion?: string
}

#DeviceConfiguration: {
	ChallengeRequiredOnNewDevice?: bool
	DeviceOnlyRememberedOnUserPrompt?: bool
}

#EmailConfiguration: {
	ConfigurationSet?: string
	EmailSendingAccount?: string
	From?: string
	ReplyToEmailAddress?: string
	SourceArn?: string
}

#EncryptionKeyArnType: string & =~"arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:([\\w+=/,.@-]*)?:[0-9]+:[\\w+=/,.@-]+(:[\\w+=/,.@-]+)?(:[\\w+=/,.@-]+)?"

#EncryptionKeyType: "AWS_OWNED_KEY" | "CUSTOMER_MANAGED_KEY"

#EumsSmsConfiguration: {
	CallerArn: string
	ConfigurationSetName?: string
	ExternalId?: string
	InEntityId?: string
	InTemplateId?: string
	OriginationIdentity?: string
	Region?: string
}

#InboundFederation: {
	LambdaArn?: string
	LambdaVersion?: string
}

#InviteMessageTemplate: {
	EmailMessage?: string
	EmailSubject?: string
	SMSMessage?: string
}

#IssuerConfiguration: {
	Type?: "ORIGINAL" | "UPDATED"
}

#KeyConfiguration: {
	KeyType?: #EncryptionKeyType
	KmsKeyArn?: #EncryptionKeyArnType
}

#LambdaConfig: {
	CreateAuthChallenge?: string
	CustomEmailSender?: #CustomEmailSender
	CustomMessage?: string
	CustomSMSSender?: #CustomSMSSender
	DefineAuthChallenge?: string
	InboundFederation?: #InboundFederation
	KMSKeyID?: string
	PostAuthentication?: string
	PostConfirmation?: string
	PreAuthentication?: string
	PreSignUp?: string
	PreTokenGeneration?: string
	PreTokenGenerationConfig?: #PreTokenGenerationConfig
	UserMigration?: string
	VerifyAuthChallengeResponse?: string
}

#NumberAttributeConstraints: {
	MaxValue?: string
	MinValue?: string
}

#PasswordPolicy: {
	MinimumLength?: int
	PasswordHistorySize?: int
	RequireLowercase?: bool
	RequireNumbers?: bool
	RequireSymbols?: bool
	RequireUppercase?: bool
	TemporaryPasswordValidityDays?: int
}

#Policies: {
	PasswordPolicy?: #PasswordPolicy
	SignInPolicy?: #SignInPolicy
}

#PreTokenGenerationConfig: {
	LambdaArn?: string
	LambdaVersion?: string
}

#RecoveryOption: {
	Name?: string
	Priority?: int
}

#SchemaAttribute: {
	AttributeDataType?: string
	DeveloperOnlyAttribute?: bool
	Mutable?: bool
	Name?: string
	NumberAttributeConstraints?: #NumberAttributeConstraints
	Required?: bool
	StringAttributeConstraints?: #StringAttributeConstraints
}

#SignInPolicy: {
	AllowedFirstAuthFactors?: [...string]
}

#SmsConfiguration: {
	EumsSms?: #EumsSmsConfiguration
	ExternalId?: string
	SnsCallerArn?: string
	SnsRegion?: string
}

#StringAttributeConstraints: {
	MaxLength?: string
	MinLength?: string
}

#UserAttributeUpdateSettings: {
	AttributesRequireVerificationBeforeUpdate: [...string]
}

#UserPoolAddOns: {
	AdvancedSecurityAdditionalFlows?: #AdvancedSecurityAdditionalFlows
	AdvancedSecurityMode?: string
}

#UsernameConfiguration: {
	CaseSensitive?: bool
}

#VerificationMessageTemplate: {
	DefaultEmailOption?: string
	EmailMessage?: string
	EmailMessageByLink?: string
	EmailSubject?: string
	EmailSubjectByLink?: string
	SmsMessage?: string
}
