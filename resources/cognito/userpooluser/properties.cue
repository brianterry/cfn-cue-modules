package userpooluser

#Properties: {
	ClientMetadata?: {...}
	DesiredDeliveryMediums?: [...string]
	ForceAliasCreation?: bool
	MessageAction?: string
	UserAttributes?: [...#AttributeType]
	UserPoolId: string
	Username?: string
	ValidationData?: [...#AttributeType]
}

#AttributeType: {
	Name?: string
	Value?: string
}
