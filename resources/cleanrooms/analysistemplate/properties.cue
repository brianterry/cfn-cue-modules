package analysistemplate

import "strings"

#Properties: {
	// The member who can query can provide this placeholder for a literal data value in an analysis template
	AnalysisParameters?: [...#AnalysisParameter]
	Description?: string & strings.MaxRunes(255)
	ErrorMessageConfiguration?: #ErrorMessageConfiguration
	Format: "SQL" | "PYSPARK_1_0"
	MembershipIdentifier: string & =~"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" & strings.MinRunes(36) & strings.MaxRunes(36)
	Name: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MaxRunes(128)
	Schema?: #AnalysisSchema
	Source: #AnalysisSource
	SourceMetadata?: #AnalysisSourceMetadata
	SyntheticDataParameters?: #SyntheticDataParameters
	// An arbitrary set of tags (key-value pairs) for this cleanrooms analysis template.
	Tags?: [...#Tag]
}

#AnalysisParameter: {
	DefaultValue?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	Name: string & =~"[0-9a-zA-Z_]+" & strings.MinRunes(1) & strings.MaxRunes(100)
	Type: "SMALLINT" | "INTEGER" | "BIGINT" | "DECIMAL" | "REAL" | "DOUBLE_PRECISION" | "BOOLEAN" | "CHAR" | "VARCHAR" | "DATE" | "TIMESTAMP" | "TIMESTAMPTZ" | "TIME" | "TIMETZ" | "VARBYTE" | "BINARY" | "BYTE" | "CHARACTER" | "DOUBLE" | "FLOAT" | "INT" | "LONG" | "NUMERIC" | "SHORT" | "STRING" | "TIMESTAMP_LTZ" | "TIMESTAMP_NTZ" | "TINYINT"
}

#AnalysisSchema: {
	ReferencedTables: #ReferencedTables
}

#AnalysisSource: {
	Text: string & strings.MinRunes(0) & strings.MaxRunes(90000)
} | {
	Artifacts: #AnalysisTemplateArtifacts
}

#AnalysisSourceMetadata: {
	Artifacts: #AnalysisTemplateArtifactMetadata
}

#AnalysisTemplateArtifact: {
	Location: #S3Location
}

#AnalysisTemplateArtifactMetadata: {
	AdditionalArtifactHashes?: [...#Hash]
	EntryPointHash: #Hash
}

#AnalysisTemplateArtifacts: {
	AdditionalArtifacts?: [...#AnalysisTemplateArtifact]
	EntryPoint: #AnalysisTemplateArtifact
	RoleArn: string & strings.MinRunes(32) & strings.MaxRunes(512)
}

#ColumnClassificationDetails: {
	ColumnMapping: [...#SyntheticDataColumnProperties]
}

#ErrorMessageConfiguration: {
	Type: "DETAILED"
}

#Hash: {
	Sha256?: string
}

#MLSyntheticDataParameters: {
	ColumnClassification: #ColumnClassificationDetails
	Epsilon: number & >=0.0001 & <=10
	MaxMembershipInferenceAttackScore: number & >=0.5 & <=1
}

#ReferencedTables: [...#TableName]

#S3Location: {
	Bucket: string & strings.MinRunes(3) & strings.MaxRunes(63)
	Key: string
}

#SyntheticDataColumnProperties: {
	ColumnName: string & =~"^[a-z0-9_](([a-z0-9_]+-)*([a-z0-9_]+))?$" & strings.MaxRunes(128)
	ColumnType: "CATEGORICAL" | "NUMERICAL"
	IsPredictiveValue: bool
}

#SyntheticDataParameters: {
	MlSyntheticDataParameters: #MLSyntheticDataParameters
}

#TableName: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MaxRunes(128)

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
