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

#AdditionalAnalyses: "ALLOWED" | "REQUIRED" | "NOT_ALLOWED"

#AllowedAnalyses: [...#AllowedAnalysis]

#AllowedAnalysis: string & =~"(ANY_QUERY|ANY_JOB|arn:[\\w]{3}:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/analysistemplate/[\\d\\w-]+)" & strings.MinRunes(0) & strings.MaxRunes(200)

#AllowedAnalysisProvider: string & =~"\\d+" & strings.MinRunes(12) & strings.MaxRunes(12)

#AllowedAnalysisProviders: [...#AllowedAnalysisProvider]

#AllowedResultReceivers: [...string & =~"\\d+" & strings.MinRunes(12) & strings.MaxRunes(12)]

#DifferentialPrivacy: {
	Columns: [...#DifferentialPrivacyColumn]
}

#DifferentialPrivacyColumn: {
	Name: string
}

#DisallowedOutputColumns: [...string & =~"^[a-z0-9_](([a-z0-9_ ]+-)*([a-z0-9_ ]+))?$" & strings.MinRunes(1) & strings.MaxRunes(127)]

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

#IntermediateTableAnalysisRulePolicyV1: {
	Custom: #IntermediateTableAnalysisRuleCustom
}

#IntermediateTableAnalysisRuleType: "CUSTOM"

#IntermediateTableStatus: "CREATED" | "POPULATE_STARTED" | "POPULATE_SUCCESS" | "POPULATE_FAILED" | "DISALLOWED_BY_DATA_PROVIDER" | "BASE_TABLE_REMOVED"

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

#UUID: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
