package sqlinjectionmatchset

#Properties: {
	Name: string
	SqlInjectionMatchTuples?: [...#SqlInjectionMatchTuple]
}

#FieldToMatch: {
	Data?: string
	Type: string
}

#SqlInjectionMatchTuple: {
	FieldToMatch: #FieldToMatch
	TextTransformation: string
}
