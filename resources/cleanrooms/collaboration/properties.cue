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
	Description: string & strings.MinRunes(1) & strings.MaxRunes(255)
	IsMetricsEnabled?: bool
	JobLogStatus?: #CollaborationJobLogStatus
	Members?: [...#MemberSpecification]
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
	QueryLogStatus: #CollaborationQueryLogStatus
	// An arbitrary set of tags (key-value pairs) for this cleanrooms collaboration.
	Tags?: [...#Tag]
}

#AllowedResultRegions: [...#SupportedS3Region]

#AnalyticsEngine: "CLEAN_ROOMS_SQL" | "SPARK"

#AutoApprovedChangeType: "ADD_MEMBER" | "GRANT_RECEIVE_RESULTS_ABILITY" | "REVOKE_RECEIVE_RESULTS_ABILITY"

#AutoApprovedChangeTypeList: [...#AutoApprovedChangeType]

#CollaborationJobLogStatus: "ENABLED" | "DISABLED"

#CollaborationQueryLogStatus: "ENABLED" | "DISABLED"

#CustomMLMemberAbilities: [...#CustomMLMemberAbility]

#CustomMLMemberAbility: "CAN_RECEIVE_MODEL_OUTPUT" | "CAN_RECEIVE_INFERENCE_OUTPUT"

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

#MemberAbilities: [...#MemberAbility]

#MemberAbility: "CAN_QUERY" | "CAN_RUN_JOB" | "CAN_RECEIVE_RESULTS"

#MemberSpecification: {
	AccountId: string & =~"^\\d+$" & strings.MinRunes(12) & strings.MaxRunes(12)
	DisplayName: #Name
	MLMemberAbilities?: #MLMemberAbilities
	MemberAbilities?: #MemberAbilities
	PaymentConfiguration?: #PaymentConfiguration
}

#MemberStatus: "INVITED" | "ACTIVE" | "LEFT" | "REMOVED"

#ModelInferencePaymentConfig: {
	IsResponsible: bool
}

#ModelTrainingPaymentConfig: {
	IsResponsible: bool
}

#Name: string & strings.MinRunes(1) & strings.MaxRunes(100)

#PaymentConfiguration: {
	JobCompute?: #JobComputePaymentConfig
	MachineLearning?: #MLPaymentConfig
	QueryCompute: #QueryComputePaymentConfig
}

#QueryComputePaymentConfig: {
	IsResponsible: bool
}

#SupportedS3Region: "us-west-1" | "us-west-2" | "us-east-1" | "us-east-2" | "af-south-1" | "ap-east-1" | "ap-east-2" | "ap-south-2" | "ap-southeast-1" | "ap-southeast-2" | "ap-southeast-3" | "ap-southeast-5" | "ap-southeast-4" | "ap-southeast-7" | "ap-south-1" | "ap-northeast-3" | "ap-northeast-1" | "ap-northeast-2" | "ca-central-1" | "ca-west-1" | "eu-south-1" | "eu-west-3" | "eu-south-2" | "eu-central-2" | "eu-central-1" | "eu-north-1" | "eu-west-1" | "eu-west-2" | "me-south-1" | "me-central-1" | "il-central-1" | "sa-east-1" | "mx-central-1"

#SyntheticDataGenerationPaymentConfig: {
	IsResponsible: bool
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
