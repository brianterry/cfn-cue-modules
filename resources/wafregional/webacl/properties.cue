package webacl

#Properties: {
	DefaultAction: #Action
	MetricName: string
	Name: string
	Rules?: [...#Rule]
}

#Action: {
	Type: string
}

#Rule: {
	Action: #Action
	Priority: int
	RuleId: string
}
