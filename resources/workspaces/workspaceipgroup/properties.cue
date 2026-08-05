package workspaceipgroup

#Properties: {
	// The description of the group.
	GroupDesc?: string
	// The name of the group.
	GroupName: string
	// The tags for the IP access control group.
	Tags?: [...#Tag]
	// The rules for the IP access control group.
	UserRules?: [...#IpRuleItem]
}

#IpRuleItem: {
	// The IP address range, in CIDR notation.
	IpRule: string
	// The description of the rule.
	RuleDesc?: string
}

#Tag: {
	// The key of the tag.
	Key: string
	// The value of the tag.
	Value: string
}
