package identityprovider

import "strings"

#Properties: {
	IdentityProviderDetails: #IdentityProviderDetails
	IdentityProviderName: string & =~"^[^_][\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}][^_]+$" & strings.MinRunes(1) & strings.MaxRunes(32)
	IdentityProviderType: #IdentityProviderType
	PortalArn?: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
}

#IdentityProviderDetails: {...}

#IdentityProviderType: "SAML" | "Facebook" | "Google" | "LoginWithAmazon" | "SignInWithApple" | "OIDC"

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
