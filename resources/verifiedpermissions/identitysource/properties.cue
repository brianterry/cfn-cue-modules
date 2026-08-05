package identitysource

import "strings"

#Properties: {
	Configuration: #IdentitySourceConfiguration
	PolicyStoreId: string & =~"^[a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	PrincipalEntityType?: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(200)
}

#CognitoGroupConfiguration: {
	GroupEntityType: string & =~"^([_a-zA-Z][_a-zA-Z0-9]*::)*[_a-zA-Z][_a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
}

#CognitoUserPoolConfiguration: {
	ClientIds?: [...string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(255)]
	GroupConfiguration?: #CognitoGroupConfiguration
	UserPoolArn: string & =~"^arn:[a-zA-Z0-9-]+:cognito-idp:(([a-zA-Z0-9-]+:\\d{12}:userpool/[\\w-]+_[0-9a-zA-Z]+))$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#IdentitySourceDetails: {
	ClientIds?: [...string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(255)]
	DiscoveryUrl?: string & =~"^https://.*$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	OpenIdIssuer?: #OpenIdIssuer
	UserPoolArn?: string & =~"^arn:[a-zA-Z0-9-]+:cognito-idp:(([a-zA-Z0-9-]+:\\d{12}:userpool/[\\w-]+_[0-9a-zA-Z]+))$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#OpenIdConnectAccessTokenConfiguration: {
	Audiences?: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
	PrincipalIdClaim?: string & strings.MinRunes(1)
}

#OpenIdConnectConfiguration: {
	EntityIdPrefix?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	GroupConfiguration?: #OpenIdConnectGroupConfiguration
	Issuer: string & =~"^https://.*$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	TokenSelection: #OpenIdConnectTokenSelection
}

#OpenIdConnectGroupConfiguration: {
	GroupClaim: string & strings.MinRunes(1)
	GroupEntityType: string & =~"^([_a-zA-Z][_a-zA-Z0-9]*::)*[_a-zA-Z][_a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
}

#OpenIdConnectIdentityTokenConfiguration: {
	ClientIds?: [...string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(255)]
	PrincipalIdClaim?: string & strings.MinRunes(1)
}
