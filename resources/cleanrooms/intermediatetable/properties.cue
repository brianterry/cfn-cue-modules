package intermediatetable

import "strings"

#Properties: {
	AnalysisRules?: [...#IntermediateTableAnalysisRule]
	Description?: string & strings.MaxRunes(255)
	KmsKeyArn?: string & strings.MinRunes(4) & strings.MaxRunes(2048)
	MembershipIdentifier: #UUID
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
	PopulationAnalysisConfiguration: #PopulationAnalysisConfiguration
	Tags?: [...#Tag]
}

#DifferentialPrivacy: {
	Columns: [...#DifferentialPrivacyColumn]
}

#DifferentialPrivacyColumn: {
	Name: string
}

#IntermediateTableAnalysisRule: {
	Policy: #IntermediateTableAnalysisRulePolicy
	Type: #IntermediateTableAnalysisRuleType
}

#IntermediateTableAnalysisRuleCustom: {
	AdditionalAnalyses?: #AdditionalAnalyses
	AllowedAnalyses: #AllowedAnalyses
	AllowedAnalysisProviders?: #AllowedAnalysisProviders
	AllowedResultReceivers?: #AllowedResultReceivers
	DifferentialPrivacy?: #DifferentialPrivacy
	DisallowedOutputColumns?: #DisallowedOutputColumns
}

#IntermediateTableAnalysisRulePolicy: {
	V1: #IntermediateTableAnalysisRulePolicyV1
}

#PopulationAnalysisConfiguration: {
	SqlParameters?: #PopulationAnalysisSqlParameters
}

#PopulationAnalysisSqlParameters: {
	AnalysisTemplateArn?: string & strings.MaxRunes(256)
	QueryString?: string & strings.MaxRunes(500000)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
