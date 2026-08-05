package bytematchset

#Properties: {
	ByteMatchTuples?: [...#ByteMatchTuple]
	Name: string
}

#ByteMatchTuple: {
	FieldToMatch: #FieldToMatch
	PositionalConstraint: string
	TargetString?: string
	TargetStringBase64?: string
	TextTransformation: string
}

#FieldToMatch: {
	Data?: string
	Type: string
}
