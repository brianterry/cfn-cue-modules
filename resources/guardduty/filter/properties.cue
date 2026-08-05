package filter

import "strings"

#Properties: {
	Action?: string
	Description?: string
	DetectorId: string & strings.MinRunes(1) & strings.MaxRunes(300)
	FindingCriteria: #FindingCriteria
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
	Rank?: int & >=1 & <=100
	Tags?: [...#TagItem]
}

#Condition: {
	Eq?: [...string]
	Equals?: [...string]
	GreaterThan?: int
	GreaterThanOrEqual?: int
	Gt?: int
	Gte?: int
	LessThan?: int
	LessThanOrEqual?: int
	Lt?: int
	Lte?: int
	Neq?: [...string]
	NotEquals?: [...string]
}

#FindingCriteria: {
	Criterion?: {...}
}

#TagItem: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
