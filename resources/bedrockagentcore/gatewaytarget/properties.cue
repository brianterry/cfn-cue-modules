package gatewaytarget

import "strings"

#Properties: {
	CredentialProviderConfigurations?: [...#CredentialProviderConfiguration]
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	GatewayIdentifier?: string & =~"^([0-9a-z][-]?){1,100}-[0-9a-z]{10}$"
	MetadataConfiguration?: #MetadataConfiguration
	Name?: string & =~"^([0-9a-zA-Z][-]?){1,100}$"
	PrivateEndpoint?: #PrivateEndpoint
	TargetConfiguration: #TargetConfiguration
}

#ApiGatewayTargetConfiguration: {
	ApiGatewayToolConfiguration: #ApiGatewayToolConfiguration
	RestApiId: string
	Stage: string
}

#ApiGatewayToolConfiguration: {
	ToolFilters: [...#ApiGatewayToolFilter]
	ToolOverrides?: [...#ApiGatewayToolOverride]
}

#ApiGatewayToolFilter: {
	FilterPath: string
	Methods: [...#RestApiMethod]
}

#ApiGatewayToolOverride: {
	Description?: string
	Method: #RestApiMethod
	Name: string
	Path: string
}

#ApiKeyCredentialLocation: "HEADER" | "QUERY_PARAMETER"

#ApiKeyCredentialProvider: {
	CredentialLocation?: #ApiKeyCredentialLocation
	CredentialParameterName?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	CredentialPrefix?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	ProviderArn: string & =~"^arn:([^:]*):([^:]*):([^:]*):([0-9]{12})?:(.+)$"
}

#ApiSchemaConfiguration: {
	S3: #S3Configuration
} | {
	InlinePayload: string
}

#AuthorizationData: {
	Oauth2: #OAuth2AuthorizationData
}

#ConnectorConfiguration: {
	Description?: string & strings.MaxRunes(2000)
	Name: string & =~"^[a-zA-Z][a-zA-Z0-9_-]*$" & strings.MaxRunes(64)
	ParameterOverrides?: [...#ConnectorParameterOverride]
	ParameterValues?: {...}
}

#ConnectorParameterOverride: {
	Description?: string
	Path: string
	Visible?: bool
}

#ConnectorSource: {
	ConnectorId: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#ConnectorTargetConfiguration: {
	Configurations?: [...#ConnectorConfiguration]
	Enabled?: [...string]
	Source: #ConnectorSource
}

#CredentialProvider: {
	OauthCredentialProvider: #OAuthCredentialProvider
} | {
	ApiKeyCredentialProvider: #ApiKeyCredentialProvider
} | {
	IamCredentialProvider: #IamCredentialProvider
}

#CredentialProviderConfiguration: {
	CredentialProvider?: #CredentialProvider
	CredentialProviderType: #CredentialProviderType
}

#CredentialProviderType: "GATEWAY_IAM_ROLE" | "OAUTH" | "API_KEY" | "CALLER_IAM_CREDENTIALS" | "JWT_PASSTHROUGH"

#EndpointIpAddressType: "IPV4" | "IPV6"

#HttpApiSchemaConfiguration: {
	Source: #ApiSchemaConfiguration
}

#HttpTargetConfiguration: {
	AgentcoreRuntime: #RuntimeTargetConfiguration
} | {
	Passthrough: #PassthroughTargetConfiguration
}

#IamCredentialProvider: {
	Region?: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(32)
	Service: string & =~"^[a-zA-Z0-9._-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#InferenceConnectorSource: {
	ConnectorId: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#InferenceConnectorTargetConfiguration: {
	Source: #InferenceConnectorSource
}

#InferenceOperationConfiguration: {
	Models?: [...#ModelEntry]
	Path: string & =~"^/[a-zA-Z0-9\\-\\._/]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	ProviderPath?: string & =~"^/[a-zA-Z0-9\\-\\._/]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#InferenceProviderTargetConfiguration: {
	Endpoint: string & =~"^https://[a-zA-Z0-9\\-\\.]+(:[0-9]{1,5})?(/.*)?$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ModelMapping?: #ModelMapping
	Operations?: [...#InferenceOperationConfiguration]
}

#InferenceTargetConfiguration: {
	Connector: #InferenceConnectorTargetConfiguration
} | {
	Provider: #InferenceProviderTargetConfiguration
}

#ManagedResourceDetails: {
	Domain?: string
	ResourceAssociationArn?: string & =~"^(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkresourceassociation/)?snra-[0-9a-f]{17}$"
	ResourceGatewayArn?: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourcegateway/rgw-[0-9a-z]{17}$"
}

#ManagedVpcResource: {
	EndpointIpAddressType: #EndpointIpAddressType
	RoutingDomain?: string & strings.MinRunes(3) & strings.MaxRunes(255)
	SecurityGroupIds?: [...string & =~"^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"]
	SubnetIds: [...string & =~"^subnet-[0-9a-zA-Z]{8,17}$"]
	VpcIdentifier: string & =~"^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$"
}

#McpLambdaTargetConfiguration: {
	LambdaArn: string & =~"^arn:(aws[a-zA-Z-]*)?:lambda:([a-z]{2}(-gov)?-[a-z]+-\\d{1}):(\\d{12}):function:([a-zA-Z0-9-_.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$" & strings.MinRunes(1) & strings.MaxRunes(170)
	ToolSchema: #ToolSchema
}

#McpServerListingMode: "DEFAULT" | "DYNAMIC"

#McpServerTargetConfiguration: {
	Endpoint: string & =~"^https://.*"
	ListingMode?: #McpServerListingMode
	McpToolSchema?: #McpToolSchemaConfiguration
	ResourcePriority?: int & >=0 & <=1000
}

#McpTargetConfiguration: {
	OpenApiSchema: #ApiSchemaConfiguration
} | {
	SmithyModel: #ApiSchemaConfiguration
} | {
	Lambda: #McpLambdaTargetConfiguration
} | {
	McpServer: #McpServerTargetConfiguration
} | {
	ApiGateway: #ApiGatewayTargetConfiguration
} | {
	Connector: #ConnectorTargetConfiguration
}

#McpToolSchemaConfiguration: {
	S3: #S3Configuration
} | {
	InlinePayload: string
}

#MetadataConfiguration: {
	AllowedQueryParameters?: [...string]
	AllowedRequestHeaders?: [...string]
	AllowedResponseHeaders?: [...string]
}

#ModelEntry: {
	Model: string & =~"^[a-zA-Z0-9\\-\\._\\*\\?@]+(/[a-zA-Z0-9\\-\\._\\*\\?@]+)*$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#ModelMapping: {
	ProviderPrefix?: #ProviderPrefix
}

#OAuth2AuthorizationData: {
	AuthorizationUrl: string & strings.MinRunes(1)
	UserId?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#OAuthCredentialProvider: {
	CustomParameters?: #OAuthCustomParameters
	// Return URL for OAuth callback.
	DefaultReturnUrl?: string & =~"\\w+:(\\/?\\/?)[^\\s]+" & strings.MinRunes(1) & strings.MaxRunes(2048)
	GrantType?: #OAuthGrantType
	ProviderArn: string & =~"^arn:([^:]*):([^:]*):([^:]*):([0-9]{12})?:(.+)$"
	Scopes: [...string & strings.MinRunes(1) & strings.MaxRunes(128)]
}

#OAuthCustomParameters: {...}

#OAuthGrantType: "AUTHORIZATION_CODE" | "CLIENT_CREDENTIALS" | "TOKEN_EXCHANGE"

#PassthroughProtocolType: "MCP" | "A2A" | "INFERENCE" | "CUSTOM"

#PassthroughTargetConfiguration: {
	Endpoint: string & =~"^https://[a-zA-Z0-9\\-\\.]+(:[0-9]{1,5})?(/.*)?$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ProtocolType: #PassthroughProtocolType
	Schema?: #HttpApiSchemaConfiguration
	StickinessConfiguration?: #StickinessConfiguration
}

#PrivateEndpoint: {
	SelfManagedLatticeResource: #SelfManagedLatticeResource
} | {
	ManagedVpcResource: #ManagedVpcResource
}

#ProviderPrefix: {
	Separator?: string & strings.MinRunes(1) & strings.MaxRunes(1)
	Strip?: bool
}

#RestApiMethod: "GET" | "DELETE" | "HEAD" | "OPTIONS" | "PATCH" | "PUT" | "POST"

#RuntimeTargetConfiguration: {
	Arn: string & =~"^arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:runtime/[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10}$"
	Qualifier?: string & =~"^(([1-9][0-9]{0,4})|([a-zA-Z][a-zA-Z0-9_]{0,47}))$"
	Schema?: #HttpApiSchemaConfiguration
}

#S3Configuration: {
	BucketOwnerAccountId?: string & =~"^[0-9]{12}$"
	Uri?: string & =~"^s3://.{1,2043}$"
}

#SchemaDefinition: {
	Description?: string
	Items?: #SchemaDefinition
	Properties?: #SchemaProperties
	Required?: [...string]
	Type: #SchemaType
}

#SchemaProperties: {...}

#SchemaType: "string" | "number" | "object" | "array" | "boolean" | "integer"

#SelfManagedLatticeResource: {
	ResourceConfigurationIdentifier: string & =~"^((rcfg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#StickinessConfiguration: {
	Identifier: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Timeout?: int & >=1 & <=86400
}

#TargetConfiguration: {
	Mcp: #McpTargetConfiguration
} | {
	Http: #HttpTargetConfiguration
} | {
	Inference: #InferenceTargetConfiguration
}

#TargetProtocolType: "MCP" | "HTTP" | "INFERENCE"

#TargetStatus: "CREATING" | "UPDATING" | "UPDATE_UNSUCCESSFUL" | "DELETING" | "READY" | "FAILED" | "SYNCHRONIZING" | "SYNCHRONIZE_UNSUCCESSFUL" | "CREATE_PENDING_AUTH" | "UPDATE_PENDING_AUTH" | "SYNCHRONIZE_PENDING_AUTH"

#ToolDefinition: {
	Description: string
	InputSchema: #SchemaDefinition
	Name: string
	OutputSchema?: #SchemaDefinition
}

#ToolSchema: {
	S3: #S3Configuration
} | {
	InlinePayload: [...#ToolDefinition]
}
