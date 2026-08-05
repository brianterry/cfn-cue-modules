package api

import "strings"

#Properties: {
	EventConfig?: #EventConfig
	Name: #ApiName
	OwnerContact?: #OwnerContact
	Tags?: #Tags
}

#AuthMode: {
	AuthType?: #AuthenticationType
}

#AuthProvider: {
	AuthType: #AuthenticationType
	CognitoConfig?: #CognitoConfig
	LambdaAuthorizerConfig?: #LambdaAuthorizerConfig
	OpenIDConnectConfig?: #OpenIDConnectConfig
}

#CognitoConfig: {
	AppIdClientRegex?: string
	AwsRegion: string
	UserPoolId: string
}

#DnsMap: {
	Http?: string
	Realtime?: string
}

#EventConfig: {
	AuthProviders: #AuthProviders
	ConnectionAuthModes: #AuthModes
	DefaultPublishAuthModes: #AuthModes
	DefaultSubscribeAuthModes: #AuthModes
	LogConfig?: #EventLogConfig
}

#EventLogConfig: {
	CloudWatchLogsRoleArn: string
	LogLevel: #EventLogLevel
}

#LambdaAuthorizerConfig: {
	AuthorizerResultTtlInSeconds?: int & >=0 & <=3600
	AuthorizerUri: string
	IdentityValidationExpression?: string
}

#OpenIDConnectConfig: {
	AuthTTL?: number
	ClientId?: string
	IatTTL?: number
	Issuer: string
}

#Tag: {
	// A string used to identify this tag. You can specify a maximum of 128 characters for a tag key.
	Key: string & =~"^(?!aws:)[ a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for this tag. You can specify a maximum of 256 characters for a tag value.
	Value: string & =~"^[\\s\\w+-=\\.:/@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
