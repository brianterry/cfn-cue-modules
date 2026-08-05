package collaboration

import "strings"

#Properties: {
	AllowedResultRegions?: #AllowedResultRegions
	AnalyticsEngine?: #AnalyticsEngine
	AutoApprovedChangeTypes?: #AutoApprovedChangeTypeList
	CreatorDisplayName: #Name
	CreatorMLMemberAbilities?: #MLMemberAbilities
	CreatorMemberAbilities?: #MemberAbilities
	CreatorPaymentConfiguration?: #PaymentConfiguration
	DataEncryptionMetadata?: #DataEncryptionMetadata
	Description: string & =~"^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t\\r\\n]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	IsMetricsEnabled?: bool
	JobLogStatus?: #CollaborationJobLogStatus
	Members?: [...#MemberSpecification]
	Name: string & =~"^(?!\\s*$)[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\t]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	QueryLogStatus: #CollaborationQueryLogStatus
	// An arbitrary set of tags (key-value pairs) for this cleanrooms collaboration.
	Tags?: [...#Tag]
}

#DataEncryptionMetadata: {
	AllowCleartext: bool
	AllowDuplicates: bool
	AllowJoinsOnColumnsWithDifferentNames: bool
	PreserveNulls: bool
}

#JobComputePaymentConfig: {
	IsResponsible: bool
}

#MLMemberAbilities: {
	CustomMLMemberAbilities: #CustomMLMemberAbilities
}

#MLPaymentConfig: {
	ModelInference?: #ModelInferencePaymentConfig
	ModelTraining?: #ModelTrainingPaymentConfig
	SyntheticDataGeneration?: #SyntheticDataGenerationPaymentConfig
}

#MemberSpecification: {
	AccountId: string & =~"^\\d+$" & strings.MinRunes(12) & strings.MaxRunes(12)
	DisplayName: #Name
	MLMemberAbilities?: #MLMemberAbilities
	MemberAbilities?: #MemberAbilities
	PaymentConfiguration?: #PaymentConfiguration
}

#ModelInferencePaymentConfig: {
	IsResponsible: bool
}

#ModelTrainingPaymentConfig: {
	IsResponsible: bool
}

#PaymentConfiguration: {
	JobCompute?: #JobComputePaymentConfig
	MachineLearning?: #MLPaymentConfig
	QueryCompute: #QueryComputePaymentConfig
}

#QueryComputePaymentConfig: {
	IsResponsible: bool
}

#SyntheticDataGenerationPaymentConfig: {
	IsResponsible: bool
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
