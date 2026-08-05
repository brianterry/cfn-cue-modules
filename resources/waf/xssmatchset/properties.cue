package xssmatchset

#Properties: {
	Name: string
	XssMatchTuples: [...#XssMatchTuple]
}

#FieldToMatch: {
	Data?: string
	Type: string
}

#XssMatchTuple: {
	FieldToMatch: #FieldToMatch
	TextTransformation: string
}
