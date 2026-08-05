package oauth2credentialprovider

import "strings"

#Properties: {
	// The vendor of the OAuth2 credential provider
	CredentialProviderVendor: "GoogleOauth2" | "GithubOauth2" | "SlackOauth2" | "SalesforceOauth2" | "MicrosoftOauth2" | "CustomOauth2" | "AtlassianOauth2" | "LinkedinOauth2" | "XOauth2" | "OktaOauth2" | "OneLoginOauth2" | "PingOneOauth2" | "FacebookOauth2" | "YandexOauth2" | "RedditOauth2" | "ZoomOauth2" | "TwitchOauth2" | "SpotifyOauth2" | "DropboxOauth2" | "NotionOauth2" | "HubspotOauth2" | "CyberArkOauth2" | "FusionAuthOauth2" | "Auth0Oauth2" | "CognitoOauth2"
	// The name of the OAuth2 credential provider
	Name: string & =~"^[a-zA-Z0-9\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The configuration settings for the OAuth2 provider
	Oauth2ProviderConfigInput?: #Oauth2ProviderConfigInput
	// Tags to assign to the OAuth2 credential provider
	Tags?: [...#Tag]
}

#AtlassianOauth2ProviderConfigInput: {
	ClientId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecretConfig?: #SecretReference
	ClientSecretSource?: "MANAGED" | "EXTERNAL"
}

#ClientSecretArn: {
	// The ARN of the secret in AWS Secrets Manager
	SecretArn: string & =~"^arn:(aws|aws-us-gov):secretsmanager:[A-Za-z0-9-]{1,64}:[0-9]{12}:secret:[a-zA-Z0-9-_/+=.@!]+$"
}

#CustomOauth2ProviderConfigInput: {
	// The client authentication method to use when authenticating with the token endpoint
	ClientAuthenticationMethod?: "CLIENT_SECRET_BASIC" | "CLIENT_SECRET_POST" | "AWS_IAM_ID_TOKEN_JWT" | "PRIVATE_KEY_JWT"
	// The client ID for the custom OAuth2 provider
	ClientId?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The client secret for the custom OAuth2 provider
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecretConfig?: #SecretReference
	// The source of the client secret
	ClientSecretSource?: "MANAGED" | "EXTERNAL"
	OauthDiscovery: #Oauth2Discovery
	OnBehalfOfTokenExchangeConfig?: #OnBehalfOfTokenExchangeConfig
	PrivateEndpoint?: #PrivateEndpoint
	// A list of private endpoint overrides. Each override maps a specific domain to a private endpoint, enabling secure connectivity through VPC Lattice resource configurations.
	PrivateEndpointOverrides?: [...#PrivateEndpointOverride]
	PrivateKeyJwtConfig?: #PrivateKeyJwtConfig
}

#GithubOauth2ProviderConfigInput: {
	ClientId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecretConfig?: #SecretReference
	ClientSecretSource?: "MANAGED" | "EXTERNAL"
}

#GoogleOauth2ProviderConfigInput: {
	ClientId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecretConfig?: #SecretReference
	ClientSecretSource?: "MANAGED" | "EXTERNAL"
}

#IncludedOauth2ProviderConfigInput: {
	// OAuth2 authorization endpoint for your isolated OAuth2 application tenant
	AuthorizationEndpoint?: string
	ClientId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecretConfig?: #SecretReference
	ClientSecretSource?: "MANAGED" | "EXTERNAL"
	// Token issuer of your isolated OAuth2 application tenant
	Issuer?: string
	// OAuth2 token endpoint for your isolated OAuth2 application tenant
	TokenEndpoint?: string
}

#KmsKeySourceType: {
	// The Amazon Resource Name (ARN) of the KMS key used to sign the JWT client assertion
	KmsKeyArn: string & =~"^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#LinkedinOauth2ProviderConfigInput: {
	ClientId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecretConfig?: #SecretReference
	ClientSecretSource?: "MANAGED" | "EXTERNAL"
}

#ManagedVpcResource: {
	// The IP address type for the resource configuration endpoint
	EndpointIpAddressType: "IPV4" | "IPV6"
	// An intermediate publicly resolvable domain used as the VPC Lattice resource configuration endpoint
	RoutingDomain?: string & strings.MinRunes(3) & strings.MaxRunes(255)
	// The security group IDs to associate with the VPC Lattice resource gateway
	SecurityGroupIds?: [...string & =~"^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"]
	// The subnet IDs within the VPC where the VPC Lattice resource gateway is placed
	SubnetIds: [...string & =~"^subnet-[0-9a-zA-Z]{8,17}$"]
	// Tags to apply to the managed VPC Lattice resource gateway
	Tags?: #TagsMap
	// The ID of the VPC that contains your private resource
	VpcIdentifier: string & =~"^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$"
}

#MicrosoftOauth2ProviderConfigInput: {
	ClientId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecretConfig?: #SecretReference
	ClientSecretSource?: "MANAGED" | "EXTERNAL"
	// The Microsoft Entra ID tenant ID
	TenantId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#Oauth2AuthorizationServerMetadata: {
	// The authorization endpoint URL
	AuthorizationEndpoint: string
	// The issuer URL for the OAuth2 authorization server
	Issuer: string
	// The supported response types
	ResponseTypes?: [...string]
	// The token endpoint URL
	TokenEndpoint: string
}

#Oauth2Discovery: {
	AuthorizationServerMetadata?: #Oauth2AuthorizationServerMetadata
	// The discovery URL for the OAuth2 provider
	DiscoveryUrl?: string & =~"^.+/\\.well-known/openid-configuration$"
}

#Oauth2ProviderConfigInput: {
	AtlassianOauth2ProviderConfig?: #AtlassianOauth2ProviderConfigInput
	CustomOauth2ProviderConfig?: #CustomOauth2ProviderConfigInput
	GithubOauth2ProviderConfig?: #GithubOauth2ProviderConfigInput
	GoogleOauth2ProviderConfig?: #GoogleOauth2ProviderConfigInput
	IncludedOauth2ProviderConfig?: #IncludedOauth2ProviderConfigInput
	LinkedinOauth2ProviderConfig?: #LinkedinOauth2ProviderConfigInput
	MicrosoftOauth2ProviderConfig?: #MicrosoftOauth2ProviderConfigInput
	SalesforceOauth2ProviderConfig?: #SalesforceOauth2ProviderConfigInput
	SlackOauth2ProviderConfig?: #SlackOauth2ProviderConfigInput
}

#Oauth2ProviderConfigOutput: {
	// The client authentication method used when authenticating with the token endpoint
	ClientAuthenticationMethod?: "CLIENT_SECRET_BASIC" | "CLIENT_SECRET_POST" | "AWS_IAM_ID_TOKEN_JWT" | "PRIVATE_KEY_JWT"
	ClientId?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	OauthDiscovery?: #Oauth2Discovery
	OnBehalfOfTokenExchangeConfig?: #OnBehalfOfTokenExchangeConfig
	PrivateEndpoint?: #PrivateEndpoint
	// The list of private endpoint overrides for the OAuth2 provider. Each override maps a specific domain to a private endpoint, enabling secure connectivity through VPC Lattice resource configurations.
	PrivateEndpointOverrides?: [...#PrivateEndpointOverride]
	PrivateKeyJwtConfig?: #PrivateKeyJwtConfig
}

#OnBehalfOfTokenExchangeConfig: {
	// The grant type for on-behalf-of token exchange
	GrantType: "TOKEN_EXCHANGE" | "JWT_AUTHORIZATION_GRANT"
	TokenExchangeGrantTypeConfig?: #TokenExchangeGrantTypeConfig
}

#PrivateEndpoint: {
	ManagedVpcResource?: #ManagedVpcResource
	SelfManagedLatticeResource?: #SelfManagedLatticeResource
}

#PrivateEndpointOverride: {
	// The domain to override with a private endpoint
	Domain: string & strings.MinRunes(1) & strings.MaxRunes(253)
	PrivateEndpoint: #PrivateEndpoint
}

#PrivateKeyJwtConfig: {
	AdditionalHeaderClaims?: #AdditionalClaims
	AdditionalPayloadClaims?: #AdditionalClaims
	PrivateKeySource?: #PrivateKeySource
	// The algorithm used to sign the JWT client assertion
	SigningAlgorithm?: "RS256" | "PS256" | "ES256"
}

#PrivateKeySource: {
	KmsKeySource?: #KmsKeySourceType
}

#SalesforceOauth2ProviderConfigInput: {
	ClientId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecretConfig?: #SecretReference
	ClientSecretSource?: "MANAGED" | "EXTERNAL"
}

#SecretReference: {
	// The JSON key within the secret that contains the credential value
	JsonKey: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ID or ARN of the secret in AWS Secrets Manager
	SecretId: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#SelfManagedLatticeResource: {
	// The ARN or ID of the VPC Lattice resource configuration
	ResourceConfigurationIdentifier: string & =~"^((rcfg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#SlackOauth2ProviderConfigInput: {
	ClientId: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecretConfig?: #SecretReference
	ClientSecretSource?: "MANAGED" | "EXTERNAL"
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TokenExchangeGrantTypeConfig: {
	// The actor token content type
	ActorTokenContent: "NONE" | "M2M" | "AWS_IAM_ID_TOKEN_JWT"
	// The actor token scopes. Only valid when ActorTokenContent is M2M.
	ActorTokenScopes?: [...string]
}
