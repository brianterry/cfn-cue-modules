package configuredtableassociation

import "strings"

#Properties: {
	ConfiguredTableAssociationAnalysisRules?: [...#ConfiguredTableAssociationAnalysisRule]
	ConfiguredTableIdentifier: string & =~"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" & strings.MinRunes(36) & strings.MaxRunes(36)
	Description?: string & =~"^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$" & strings.MaxRunes(255)
	MembershipIdentifier: string & =~"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" & strings.MinRunes(36) & strings.MaxRunes(36)
	Name: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MaxRunes(128)
	RoleArn: string & strings.MinRunes(32) & strings.MaxRunes(512)
	// An arbitrary set of tags (key-value pairs) for this cleanrooms collaboration.
	Tags?: [...#Tag]
}

#ConfiguredTableAssociationAnalysisRule: {
	Policy: #ConfiguredTableAssociationAnalysisRulePolicy
	Type: #ConfiguredTableAssociationAnalysisRuleType
}

#ConfiguredTableAssociationAnalysisRuleAggregation: {
	AllowedAdditionalAnalyses?: #AllowedAdditionalAnalyses
	AllowedResultReceivers?: #AllowedResultReceivers
}

#ConfiguredTableAssociationAnalysisRuleCustom: {
	AllowedAdditionalAnalyses?: #AllowedAdditionalAnalyses
	AllowedResultReceivers?: #AllowedResultReceivers
}

#ConfiguredTableAssociationAnalysisRuleList: {
	AllowedAdditionalAnalyses?: #AllowedAdditionalAnalyses
	AllowedResultReceivers?: #AllowedResultReceivers
}

#ConfiguredTableAssociationAnalysisRulePolicy: {
	V1: #ConfiguredTableAssociationAnalysisRulePolicyV1
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
