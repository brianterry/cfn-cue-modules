package userpoolregionalconfigurationattachment

#Properties: {
	EmailConfiguration?: #EmailConfiguration
	LambdaConfig?: #LambdaConfig
	SmsConfiguration?: #SmsConfiguration
	// The status of the replica. Set to ACTIVE or INACTIVE.
	Status?: string
	UserPoolId: string
	UserPoolTags?: {...}
}

#CustomEmailSender: {
	LambdaArn?: string
	LambdaVersion?: string
}

#CustomSMSSender: {
	LambdaArn?: string
	LambdaVersion?: string
}

#EmailConfiguration: {
	ConfigurationSet?: string
	EmailSendingAccount?: string
	From?: string
	ReplyToEmailAddress?: string
	SourceArn?: string
}

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

#PreTokenGenerationConfig: {
	LambdaArn?: string
	LambdaVersion?: string
}

#SmsConfiguration: {
	EumsSms?: #EumsSmsConfiguration
	ExternalId?: string
	SnsCallerArn?: string
	SnsRegion?: string
}
