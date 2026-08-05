package dataaccessor

import "strings"

#Properties: {
	ActionConfigurations: [...#ActionConfiguration]
	ApplicationId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	AuthenticationDetail?: #DataAccessorAuthenticationDetail
	DisplayName: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Principal: string & =~"^arn:aws:iam::[0-9]{12}:role/[a-zA-Z0-9_/+=,.@-]+$" & strings.MinRunes(1) & strings.MaxRunes(1284)
	Tags?: [...#Tag]
}

#ActionConfiguration: {
	Action: string & =~"^qbusiness:[a-zA-Z]+$"
	FilterConfiguration?: #ActionFilterConfiguration
}

#ActionFilterConfiguration: {
	DocumentAttributeFilter: #AttributeFilter
}

#AttributeFilter: {
	AndAllFilters?: [...#AttributeFilter]
	ContainsAll?: #DocumentAttribute
	ContainsAny?: #DocumentAttribute
	EqualsTo?: #DocumentAttribute
	GreaterThan?: #DocumentAttribute
	GreaterThanOrEquals?: #DocumentAttribute
	LessThan?: #DocumentAttribute
	LessThanOrEquals?: #DocumentAttribute
	NotFilter?: #AttributeFilter
	OrAllFilters?: [...#AttributeFilter]
}

#DataAccessorAuthenticationConfiguration: {
	IdcTrustedTokenIssuerConfiguration: #DataAccessorIdcTrustedTokenIssuerConfiguration
}

#DataAccessorAuthenticationDetail: {
	AuthenticationConfiguration?: #DataAccessorAuthenticationConfiguration
	AuthenticationType: #DataAccessorAuthenticationType
	ExternalIds?: [...string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(1000)]
}

#DataAccessorAuthenticationType: "AWS_IAM_IDC_TTI" | "AWS_IAM_IDC_AUTH_CODE"

#DataAccessorIdcTrustedTokenIssuerConfiguration: {
	IdcTrustedTokenIssuerArn: string & =~"^arn:aws:sso::[0-9]{12}:trustedTokenIssuer/(sso)?ins-[a-zA-Z0-9-.]{16}/tti-[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
}

#DocumentAttribute: {
	Name: string & =~"^[a-zA-Z0-9_][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Value: #DocumentAttributeValue
}

#DocumentAttributeValue: {
	StringValue: string & strings.MaxRunes(2048)
} | {
	StringListValue: [...string & strings.MinRunes(1) & strings.MaxRunes(2048)]
} | {
	LongValue: number
} | {
	DateValue: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Unit: {...}
