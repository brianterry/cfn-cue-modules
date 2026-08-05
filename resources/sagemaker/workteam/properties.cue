package workteam

#Properties: {
	Description?: string
	MemberDefinitions?: [...#MemberDefinition]
	NotificationConfiguration?: #NotificationConfiguration
	Tags?: [...#Tag]
	WorkforceName?: string
	WorkteamName?: string
}

#CognitoMemberDefinition: {
	CognitoClientId: string
	CognitoUserGroup: string
	CognitoUserPool: string
}

#MemberDefinition: {
	CognitoMemberDefinition?: #CognitoMemberDefinition
	OidcMemberDefinition?: #OidcMemberDefinition
}

#NotificationConfiguration: {
	NotificationTopicArn: string
}

#OidcMemberDefinition: {
	OidcGroups: [...string]
}

#Tag: {
	Key: string
	Value: string
}
