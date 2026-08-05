package membership

import "strings"

#Properties: {
	CollaborationIdentifier: string & =~"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" & strings.MinRunes(36) & strings.MaxRunes(36)
	DefaultJobResultConfiguration?: #MembershipProtectedJobResultConfiguration
	DefaultResultConfiguration?: #MembershipProtectedQueryResultConfiguration
	IsMetricsEnabled?: bool
	JobLogStatus?: #MembershipJobLogStatus
	PaymentConfiguration?: #MembershipPaymentConfiguration
	QueryLogStatus: #MembershipQueryLogStatus
	// An arbitrary set of tags (key-value pairs) for this cleanrooms membership.
	Tags?: [...#Tag]
}

#MembershipJobComputePaymentConfig: {
	IsResponsible: bool
}

#MembershipJobLogStatus: "ENABLED" | "DISABLED"

#MembershipMLPaymentConfig: {
	ModelInference?: #MembershipModelInferencePaymentConfig
	ModelTraining?: #MembershipModelTrainingPaymentConfig
	SyntheticDataGeneration?: #MembershipSyntheticDataGenerationPaymentConfig
}

#MembershipModelInferencePaymentConfig: {
	IsResponsible: bool
}

#MembershipModelTrainingPaymentConfig: {
	IsResponsible: bool
}

#MembershipPaymentConfiguration: {
	JobCompute?: #MembershipJobComputePaymentConfig
	MachineLearning?: #MembershipMLPaymentConfig
	QueryCompute: #MembershipQueryComputePaymentConfig
}

#MembershipProtectedJobOutputConfiguration: {
	S3: #ProtectedJobS3OutputConfigurationInput
}

#MembershipProtectedJobResultConfiguration: {
	OutputConfiguration: #MembershipProtectedJobOutputConfiguration
	RoleArn: string & strings.MinRunes(32) & strings.MaxRunes(512)
}

#MembershipProtectedQueryOutputConfiguration: {
	S3: #ProtectedQueryS3OutputConfiguration
}

#MembershipProtectedQueryResultConfiguration: {
	OutputConfiguration: #MembershipProtectedQueryOutputConfiguration
	RoleArn?: string & strings.MinRunes(32) & strings.MaxRunes(512)
}

#MembershipQueryComputePaymentConfig: {
	IsResponsible: bool
}

#MembershipQueryLogStatus: "ENABLED" | "DISABLED"

#MembershipStatus: "ACTIVE" | "REMOVED" | "COLLABORATION_DELETED"

#MembershipSyntheticDataGenerationPaymentConfig: {
	IsResponsible: bool
}

#ProtectedJobS3OutputConfigurationInput: {
	Bucket: string & strings.MinRunes(3) & strings.MaxRunes(63)
	KeyPrefix?: string
}

#ProtectedQueryS3OutputConfiguration: {
	Bucket: string & strings.MinRunes(3) & strings.MaxRunes(63)
	KeyPrefix?: string
	ResultFormat: #ResultFormat
	SingleFileOutput?: bool
}

#ResultFormat: "CSV" | "PARQUET"

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
