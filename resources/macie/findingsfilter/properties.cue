package findingsfilter

#Properties: {
	// Findings filter action.
	Action?: #FindingFilterAction
	// Findings filter description
	Description?: string
	// Findings filter criteria.
	FindingCriteria: #FindingCriteria
	// Findings filter name
	Name: string
	// Findings filter position.
	Position?: int
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#Criterion: {...}

#CriterionAdditionalProperties: {
	eq?: [...string]
	gt?: int
	gte?: int
	lt?: int
	lte?: int
	neq?: [...string]
}

#FindingCriteria: {
	Criterion?: #Criterion
}

#FindingFilterAction: "ARCHIVE" | "NOOP"

#FindingsFilterListItem: {
	Id?: string
	Name?: string
}

#Tag: {
	// The tag's key.
	Key: string
	// The tag's value.
	Value: string
}
