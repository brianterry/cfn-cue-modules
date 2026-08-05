package webacl

#Properties: {
	DefaultAction: #WafAction
	MetricName: string
	Name: string
	Rules?: [...#ActivatedRule]
}

#ActivatedRule: {
	Action?: #WafAction
	Priority: int
	RuleId: string
}

#WafAction: {
	Type: string
}
