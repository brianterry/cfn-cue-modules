package method

#Properties: {
	ApiKeyRequired?: bool
	AuthorizationScopes?: [...string]
	// The method's authorization type. This parameter is required. For valid values, see [Method](https://docs.aws.amazon.com/apigateway/latest/api/API_Method.html) in the *API Gateway API Reference*.
	// If you specify the ``AuthorizerId`` property, specify ``CUSTOM`` or ``COGNITO_USER_POOLS`` for this property.
	AuthorizationType?: string
	AuthorizerId?: string
	HttpMethod: string
	Integration?: #Integration
	MethodResponses?: [...#MethodResponse]
	OperationName?: string
	RequestModels?: {...}
	RequestParameters?: {...}
	RequestValidatorId?: string
	ResourceId: string
	RestApiId: string
}

#Integration: {
	CacheKeyParameters?: [...string]
	CacheNamespace?: string
	ConnectionId?: string
	ConnectionType?: "INTERNET" | "VPC_LINK"
	ContentHandling?: "CONVERT_TO_BINARY" | "CONVERT_TO_TEXT"
	Credentials?: string
	IntegrationHttpMethod?: string
	IntegrationResponses?: [...#IntegrationResponse]
	IntegrationTarget?: string
	PassthroughBehavior?: "WHEN_NO_MATCH" | "WHEN_NO_TEMPLATES" | "NEVER"
	RequestParameters?: {...}
	RequestTemplates?: {...}
	ResponseTransferMode?: "BUFFERED" | "STREAM"
	TimeoutInMillis?: int & >=50
	Type: "AWS" | "AWS_PROXY" | "HTTP" | "HTTP_PROXY" | "MOCK"
	Uri?: string
}

#IntegrationResponse: {
	ContentHandling?: "CONVERT_TO_BINARY" | "CONVERT_TO_TEXT"
	ResponseParameters?: {...}
	ResponseTemplates?: {...}
	SelectionPattern?: string
	StatusCode: string
}

#MethodResponse: {
	ResponseModels?: {...}
	ResponseParameters?: {...}
	StatusCode: string
}
