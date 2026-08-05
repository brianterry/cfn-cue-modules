package stage

import "strings"

#Properties: {
	AccessLogSetting?: #AccessLogSetting
	CacheClusterEnabled?: bool
	CacheClusterSize?: string
	CanarySetting?: #CanarySetting
	ClientCertificateId?: string
	DeploymentId?: string
	Description?: string
	DocumentationVersion?: string
	MethodSettings?: [...#MethodSetting]
	RestApiId: string
	StageName?: string
	Tags?: [...#Tag]
	TracingEnabled?: bool
	// A map (string-to-string map) that defines the stage variables, where the variable name is the key and the variable value is the value. Variable names are limited to alphanumeric characters. Values must match the following regular expression: ``[A-Za-z0-9-._~:/?#&=,]+``.
	Variables?: {...}
}

#AccessLogSetting: {
	// The Amazon Resource Name (ARN) of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with ``amazon-apigateway-``. This parameter is required to enable access logging.
	DestinationArn?: string
	// A single line format of the access logs of data, as specified by selected [$context variables](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#context-variable-reference). The format must include at least ``$context.requestId``. This parameter is required to enable access logging.
	Format?: string
}

#CanarySetting: {
	DeploymentId?: string
	PercentTraffic?: number & >=0 & <=100
	StageVariableOverrides?: {...}
	UseStageCache?: bool
}

#MethodSetting: {
	CacheDataEncrypted?: bool
	CacheTtlInSeconds?: int
	CachingEnabled?: bool
	DataTraceEnabled?: bool
	// The HTTP method. To apply settings to multiple resources and methods, specify an asterisk (``*``) for the ``HttpMethod`` and ``/*`` for the ``ResourcePath``. This parameter is required when you specify a ``MethodSetting``.
	HttpMethod?: string
	LoggingLevel?: string
	MetricsEnabled?: bool
	// The resource path for this method. Forward slashes (``/``) are encoded as ``~1`` and the initial slash must include a forward slash. For example, the path value ``/resource/subresource`` must be encoded as ``/~1resource~1subresource``. To specify the root path, use only a slash (``/``). To apply settings to multiple resources and methods, specify an asterisk (``*``) for the ``HttpMethod`` and ``/*`` for the ``ResourcePath``. This parameter is required when you specify a ``MethodSetting``.
	ResourcePath?: string
	ThrottlingBurstLimit?: int & >=0
	ThrottlingRateLimit?: number & >=0
}

#Tag: {
	// A string you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the specified tag key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
