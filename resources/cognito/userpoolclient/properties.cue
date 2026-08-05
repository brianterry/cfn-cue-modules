package userpoolclient

import "strings"

#Properties: {
	AccessTokenValidity?: int & >=1 & <=86400
	AllowedOAuthFlows?: [...string]
	AllowedOAuthFlowsUserPoolClient?: bool
	AllowedOAuthScopes?: [...string]
	AnalyticsConfiguration?: #AnalyticsConfiguration
	AuthSessionValidity?: int & >=3 & <=15
	CallbackURLs?: [...string]
	ClientName?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	DefaultRedirectURI?: string
	EnablePropagateAdditionalUserContextData?: bool
	EnableTokenRevocation?: bool
	ExplicitAuthFlows?: [...string]
	GenerateSecret?: bool
	IdTokenValidity?: int & >=1 & <=86400
	LogoutURLs?: [...string]
	PreventUserExistenceErrors?: string
	ReadAttributes?: [...string]
	RefreshTokenRotation?: #RefreshTokenRotation
	RefreshTokenValidity?: int & >=1 & <=315360000
	SupportedIdentityProviders?: [...string]
	TokenValidityUnits?: #TokenValidityUnits
	UserPoolId: string
	WriteAttributes?: [...string]
}

#AnalyticsConfiguration: {
	ApplicationArn?: string
	ApplicationId?: string
	ExternalId?: string
	RoleArn?: string
	UserDataShared?: bool
}

#RefreshTokenRotation: {
	Feature?: "ENABLED" | "DISABLED"
	RetryGracePeriodSeconds?: int & >=0 & <=60
}

#TokenValidityUnits: {
	AccessToken?: string
	IdToken?: string
	RefreshToken?: string
}
