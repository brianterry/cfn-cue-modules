package insightrule

#Properties: {
	ApplyOnTransformedLogs?: bool
	RuleBody: string
	RuleName: string
	RuleState: "ENABLED" | "DISABLED"
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
