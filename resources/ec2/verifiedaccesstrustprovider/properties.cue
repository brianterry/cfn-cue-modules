package verifiedaccesstrustprovider

import "strings"

#Properties: {
	// A description for the Amazon Web Services Verified Access trust provider.
	Description?: string
	DeviceOptions?: #DeviceOptions
	// The type of device-based trust provider. Possible values: jamf|crowdstrike
	DeviceTrustProviderType?: string
	NativeApplicationOidcOptions?: #NativeApplicationOidcOptions
	OidcOptions?: #OidcOptions
	// The identifier to be used when working with policy rules.
	PolicyReferenceName: string
	// The configuration options for customer provided KMS encryption.
	SseSpecification?: {
		CustomerManagedKeyEnabled?: bool
		KmsKeyArn?: string
	}
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// Type of trust provider. Possible values: user|device
	TrustProviderType: string
	// The type of device-based trust provider. Possible values: oidc|iam-identity-center
	UserTrustProviderType?: string
}

#DeviceOptions: {
	// URL Verified Access will use to verify authenticity of the device tokens.
	PublicSigningKeyUrl?: string
	// The ID of the tenant application with the device-identity provider.
	TenantId?: string
}

#NativeApplicationOidcOptions: {
	// The OIDC authorization endpoint.
	AuthorizationEndpoint?: string
	// The client identifier.
	ClientId?: string
	// The client secret.
	ClientSecret?: string
	// The OIDC issuer.
	Issuer?: string
	// The public signing key for endpoint
	PublicSigningKeyEndpoint?: string
	// OpenID Connect (OIDC) scopes are used by an application during authentication to authorize access to details of a user. Each scope returns a specific set of user attributes.
	Scope?: string
	// The OIDC token endpoint.
	TokenEndpoint?: string
	// The OIDC user info endpoint.
	UserInfoEndpoint?: string
}

#OidcOptions: {
	// The OIDC authorization endpoint.
	AuthorizationEndpoint?: string
	// The client identifier.
	ClientId?: string
	// The client secret.
	ClientSecret?: string
	// The OIDC issuer.
	Issuer?: string
	// OpenID Connect (OIDC) scopes are used by an application during authentication to authorize access to details of a user. Each scope returns a specific set of user attributes.
	Scope?: string
	// The OIDC token endpoint.
	TokenEndpoint?: string
	// The OIDC user info endpoint.
	UserInfoEndpoint?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
