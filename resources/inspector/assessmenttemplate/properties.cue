package assessmenttemplate

#Properties: {
	AssessmentTargetArn: string
	AssessmentTemplateName?: string
	DurationInSeconds: int
	RulesPackageArns: [...string]
	UserAttributesForFindings?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
