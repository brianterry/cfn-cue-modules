package sizeconstraintset

#Properties: {
	Name: string
	SizeConstraints?: [...#SizeConstraint]
}

#FieldToMatch: {
	Data?: string
	Type: string
}

#SizeConstraint: {
	ComparisonOperator: string
	FieldToMatch: #FieldToMatch
	Size: int
	TextTransformation: string
}
