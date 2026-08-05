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

#AuthorizingClaimMatchValueType: {
	ClaimMatchOperator: #ClaimMatchOperator
	ClaimMatchValue: #ClaimMatchValueType
}

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

#SessionConfiguration: {
	SessionTimeoutInSeconds?: int & >=900 & <=28800
}

#StreamingConfiguration: {
	EnableResponseStreaming?: bool
}

#WorkloadIdentityDetails: {
	WorkloadIdentityArn: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}
