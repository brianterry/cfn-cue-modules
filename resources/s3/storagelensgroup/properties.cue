package storagelensgroup

import "strings"

#Properties: {
	Filter: #Filter
	Name: #Name
	// A set of tags (key-value pairs) for this Amazon S3 Storage Lens Group.
	Tags?: [...#Tag]
}

#And: {
	MatchAnyPrefix?: #MatchAnyPrefix
	MatchAnySuffix?: #MatchAnySuffix
	MatchAnyTag?: #MatchAnyTag
	MatchObjectAge?: #MatchObjectAge
	MatchObjectSize?: #MatchObjectSize
}

#Filter: {
	And?: #And
	MatchAnyPrefix?: #MatchAnyPrefix
	MatchAnySuffix?: #MatchAnySuffix
	MatchAnyTag?: #MatchAnyTag
	MatchObjectAge?: #MatchObjectAge
	MatchObjectSize?: #MatchObjectSize
	Or?: #Or
}

#MatchAnyPrefix: [...string & strings.MaxRunes(1024)]

#MatchAnySuffix: [...string & strings.MaxRunes(1024)]

#MatchAnyTag: [...#Tag]

#MatchObjectAge: {
	// Minimum object age to which the rule applies.
	DaysGreaterThan?: int & >=1
	// Maximum object age to which the rule applies.
	DaysLessThan?: int & >=1
}

#MatchObjectSize: {
	// Minimum object size to which the rule applies.
	BytesGreaterThan?: int & >=1
	// Maximum object size to which the rule applies.
	BytesLessThan?: int & >=1
}

#Name: string & =~"^[a-zA-Z0-9\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)

#Or: {
	MatchAnyPrefix?: #MatchAnyPrefix
	MatchAnySuffix?: #MatchAnySuffix
	MatchAnyTag?: #MatchAnyTag
	MatchObjectAge?: #MatchObjectAge
	MatchObjectSize?: #MatchObjectSize
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
