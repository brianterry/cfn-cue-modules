package ratebasedrule

#Properties: {
	MatchPredicates?: [...#Predicate]
	MetricName: string
	Name: string
	RateKey: string
	RateLimit: int
}

#Predicate: {
	DataId: string
	Negated: bool
	Type: string
}
