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

#ApiKeyCredentialProvider: {
	CredentialLocation?: #ApiKeyCredentialLocation
	CredentialParameterName?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	CredentialPrefix?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	ProviderArn: string & =~"^arn:([^:]*):([^:]*):([^:]*):([0-9]{12})?:(.+)$"
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

#CredentialProviderConfiguration: {
	CredentialProvider?: #CredentialProvider
	CredentialProviderType: #CredentialProviderType
}

#HttpApiSchemaConfiguration: {
	Source: #ApiSchemaConfiguration
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

#McpServerTargetConfiguration: {
	Endpoint: string & =~"^https://.*"
	ListingMode?: #McpServerListingMode
	McpToolSchema?: #McpToolSchemaConfiguration
	ResourcePriority?: int & >=0 & <=1000
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

#PassthroughTargetConfiguration: {
	Endpoint: string & =~"^https://[a-zA-Z0-9\\-\\.]+(:[0-9]{1,5})?(/.*)?$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ProtocolType: #PassthroughProtocolType
	Schema?: #HttpApiSchemaConfiguration
	StickinessConfiguration?: #StickinessConfiguration
}

#ProviderPrefix: {
	Separator?: string & strings.MinRunes(1) & strings.MaxRunes(1)
	Strip?: bool
}

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

#StickinessConfiguration: {
	Identifier: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Timeout?: int & >=1 & <=86400
}

#ToolDefinition: {
	Description: string
	InputSchema: #SchemaDefinition
	Name: string
	OutputSchema?: #SchemaDefinition
}
