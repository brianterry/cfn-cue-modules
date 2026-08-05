package channelnamespace

import "strings"

#Properties: {
	// AppSync Api Id that this Channel Namespace belongs to.
	ApiId: string
	CodeHandlers?: #Code
	// The Amazon S3 endpoint where the code is located.
	CodeS3Location?: string
	HandlerConfigs?: #HandlerConfigs
	Name: #Namespace
	// List of AuthModes supported for Publish operations.
	PublishAuthModes?: #AuthModes
	// List of AuthModes supported for Subscribe operations.
	SubscribeAuthModes?: #AuthModes
	Tags?: #Tags
}

#AuthMode: {
	AuthType?: #AuthenticationType
}

#AuthModes: [...#AuthMode]

#AuthenticationType: "AMAZON_COGNITO_USER_POOLS" | "AWS_IAM" | "API_KEY" | "OPENID_CONNECT" | "AWS_LAMBDA"

#ChannelNamespaceArn: string

#Code: string & strings.MinRunes(1) & strings.MaxRunes(32768)

#HandlerBehavior: "CODE" | "DIRECT"

#HandlerConfig: {
	Behavior: #HandlerBehavior
	Integration: #Integration
}

#HandlerConfigs: {
	OnPublish?: #HandlerConfig
	OnSubscribe?: #HandlerConfig
}

#Integration: {
	// Data source to invoke for this integration.
	DataSourceName: string & =~"([_A-Za-z][_0-9A-Za-z]{0,511})?" & strings.MinRunes(1) & strings.MaxRunes(512)
	LambdaConfig?: #LambdaConfig
}

#InvokeType: "REQUEST_RESPONSE" | "EVENT"

#LambdaConfig: {
	InvokeType: #InvokeType
}

#Namespace: string & =~"([A-Za-z0-9](?:[A-Za-z0-9\\-]{0,48}[A-Za-z0-9])?)" & strings.MinRunes(1) & strings.MaxRunes(50)

#Tag: {
	// A string used to identify this tag. You can specify a maximum of 128 characters for a tag key.
	Key: string & =~"^(?!aws:)[ a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for this tag. You can specify a maximum of 256 characters for a tag value.
	Value: string & =~"^[\\s\\w+-=\\.:/@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]
