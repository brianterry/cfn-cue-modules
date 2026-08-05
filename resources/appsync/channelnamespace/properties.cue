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

#LambdaConfig: {
	InvokeType: #InvokeType
}

#Tag: {
	// A string used to identify this tag. You can specify a maximum of 128 characters for a tag key.
	Key: string & =~"^(?!aws:)[ a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for this tag. You can specify a maximum of 256 characters for a tag value.
	Value: string & =~"^[\\s\\w+-=\\.:/@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
