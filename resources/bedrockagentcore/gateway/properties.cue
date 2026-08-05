package gateway

import "strings"

#Properties: {
	AuthorizerConfiguration?: #AuthorizerConfiguration
	AuthorizerType: #AuthorizerType
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	ExceptionLevel?: #ExceptionLevel
	InterceptorConfigurations?: [...#GatewayInterceptorConfiguration]
	KmsKeyArn?: string & =~"^arn:[a-z0-9-]{1,20}:kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Name: string & =~"^([0-9a-zA-Z][-]?){1,100}$"
	PolicyEngineConfiguration?: #GatewayPolicyEngineConfiguration
	ProtocolConfiguration?: #GatewayProtocolConfiguration
	ProtocolType?: string
	RoleArn: string & =~"^arn:[a-z0-9-]{1,20}:iam::([0-9]{12})?:role/.+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Tags?: #TagsMap
}

#AllowedScope: string

#AuthorizerConfiguration: {
	CustomJWTAuthorizer: #CustomJWTAuthorizerConfiguration
}

#AuthorizerType: "CUSTOM_JWT" | "AWS_IAM" | "NONE" | "AUTHENTICATE_ONLY"

#AuthorizingClaimMatchValueType: {
	ClaimMatchOperator: #ClaimMatchOperator
	ClaimMatchValue: #ClaimMatchValueType
}

#ClaimMatchOperator: "EQUALS" | "CONTAINS" | "CONTAINS_ANY"

#ClaimMatchValueType: {
	MatchValueString?: #MatchValueString
	MatchValueStringList?: #MatchValueStringList
}

#CustomClaimValidationType: {
	AuthorizingClaimMatchValue: #AuthorizingClaimMatchValueType
	InboundTokenClaimName: #InboundTokenClaimName
	InboundTokenClaimValueType: #InboundTokenClaimValueType
}

#CustomJWTAuthorizerConfiguration: {
	AllowedAudience?: [...string]
	AllowedClients?: [...string]
	AllowedScopes?: [...#AllowedScope]
	CustomClaims?: [...#CustomClaimValidationType]
	DiscoveryUrl: string & =~"^.+/\\.well-known/openid-configuration$"
	PrivateEndpoint?: #PrivateEndpoint
}

#EndpointIpAddressType: "IPV4" | "IPV6"

#ExceptionLevel: "DEBUG"

#GatewayInterceptionPoint: "REQUEST" | "RESPONSE"

#GatewayInterceptorConfiguration: {
	InputConfiguration?: #InterceptorInputConfiguration
	InterceptionPoints: [...#GatewayInterceptionPoint]
	Interceptor: #InterceptorConfiguration
}

#GatewayPolicyEngineConfiguration: {
	// The ARN of the policy engine. The policy engine contains Cedar policies that define fine-grained authorization rules specifying who can perform what actions on which resources as agents interact through the gateway.
	Arn: string & =~"^arn:[a-z0-9-]{1,20}:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:policy-engine/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9_]{10}$" & strings.MinRunes(1) & strings.MaxRunes(170)
	Mode: #GatewayPolicyEngineMode
}

#GatewayPolicyEngineMode: "LOG_ONLY" | "ENFORCE"

#GatewayProtocolConfiguration: {
	Mcp: #MCPGatewayConfiguration
}

#GatewayProtocolType: "MCP"

#GatewayStatus: "CREATING" | "UPDATING" | "UPDATE_UNSUCCESSFUL" | "DELETING" | "READY" | "FAILED"

#InboundTokenClaimName: string & =~"[A-Za-z0-9_.-:]+"

#InboundTokenClaimValueType: "STRING" | "STRING_ARRAY"

#InterceptorConfiguration: {
	Lambda: #LambdaInterceptorConfiguration
}

#InterceptorInputConfiguration: {
	PassRequestHeaders: bool
}

#LambdaInterceptorConfiguration: {
	Arn: string & =~"^arn:[a-z0-9-]{1,20}:lambda:([a-z]{2}(-gov)?-[a-z]+-\\d{1}):(\\d{12}):function:([a-zA-Z0-9-_.]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$" & strings.MinRunes(1) & strings.MaxRunes(170)
}

#MCPGatewayConfiguration: {
	Instructions?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	SearchType?: #SearchType
	SessionConfiguration?: #SessionConfiguration
	StreamingConfiguration?: #StreamingConfiguration
	SupportedVersions?: [...string]
}

#ManagedVpcResource: {
	EndpointIpAddressType: #EndpointIpAddressType
	RoutingDomain?: string & strings.MinRunes(3) & strings.MaxRunes(255)
	SecurityGroupIds?: [...string & =~"^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"]
	SubnetIds: [...string & =~"^subnet-(([0-9a-z]{8})|([0-9a-z]{17}))$"]
	VpcIdentifier: string & =~"^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$"
}

#MatchValueString: string & =~"[A-Za-z0-9_.-]+"

#MatchValueStringList: [...#MatchValueString]

#PrivateEndpoint: {
	SelfManagedLatticeResource: #SelfManagedLatticeResource
} | {
	ManagedVpcResource: #ManagedVpcResource
}

#SearchType: "SEMANTIC"

#SelfManagedLatticeResource: {
	ResourceConfigurationIdentifier: string & =~"^((rcfg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#SessionConfiguration: {
	SessionTimeoutInSeconds?: int & >=900 & <=28800
}

#StreamingConfiguration: {
	EnableResponseStreaming?: bool
}

#TagsMap: {...}

#WorkloadIdentityDetails: {
	WorkloadIdentityArn: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}
