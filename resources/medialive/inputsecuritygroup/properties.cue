package inputsecuritygroup

#Properties: {
	Tags?: {...}
	WhitelistRules?: [...#InputWhitelistRuleCidr]
}

#InputWhitelistRuleCidr: {
	Cidr?: string
}
