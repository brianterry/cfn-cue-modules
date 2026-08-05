package rule

#Properties: {
	MetricName: string
	Name: string
	Predicates?: [...#Predicate]
}

#Predicate: {
	DataId: string
	Negated: bool
	Type: string
}
