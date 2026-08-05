package identitypoolroleattachment

#Properties: {
	IdentityPoolId: string
	RoleMappings?: string
	Roles?: string
}

#MappingRule: {
	Claim: string
	MatchType: string
	RoleARN: string
	Value: string
}

#RoleMapping: {
	AmbiguousRoleResolution?: string
	IdentityProvider?: string
	RulesConfiguration?: #RulesConfigurationType
	Type: string
}

#RulesConfigurationType: {
	Rules: [...#MappingRule]
}
