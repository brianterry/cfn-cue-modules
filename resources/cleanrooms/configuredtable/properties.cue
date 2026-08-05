package configuredtable

import "strings"

#Properties: {
	AllowedColumns: [...string & =~"^[a-z0-9_](([a-z0-9_ ]+-)*([a-z0-9_ ]+))?$" & strings.MaxRunes(128)]
	AnalysisMethod: #AnalysisMethod
	AnalysisRules?: [...#AnalysisRule]
	Description?: string & strings.MaxRunes(255)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
	SelectedAnalysisMethods?: #SelectedAnalysisMethods
	TableReference: #TableReference
	// An arbitrary set of tags (key-value pairs) for this cleanrooms collaboration.
	Tags?: [...#Tag]
}

#AdditionalAnalyses: "ALLOWED" | "REQUIRED" | "NOT_ALLOWED"

#AggregateColumn: {
	ColumnNames: [...#AnalysisRuleColumnName]
	Function: #AggregateFunctionName
}

#AggregateFunctionName: "SUM" | "SUM_DISTINCT" | "COUNT" | "COUNT_DISTINCT" | "AVG"

#AggregationConstraint: {
	ColumnName: #AnalysisRuleColumnName
	Minimum: number & >=2 & <=100000
	Type: #AggregationType
}

#AggregationType: "COUNT_DISTINCT"

#AllowedAnalyses: [...#AllowedAnalysis]

#AllowedAnalysis: string & =~"(ANY_QUERY|ANY_JOB|arn:[\\w]{3}:cleanrooms:[\\w]{2}-[\\w]{4,9}-[\\d]:[\\d]{12}:membership/[\\d\\w-]+/analysistemplate/[\\d\\w-]+)" & strings.MinRunes(0) & strings.MaxRunes(200)

#AllowedAnalysisProvider: string & =~"\\d+" & strings.MinRunes(12) & strings.MaxRunes(12)

#AllowedAnalysisProviders: [...#AllowedAnalysisProvider]

#AnalysisMethod: "DIRECT_QUERY" | "DIRECT_JOB" | "MULTIPLE"

#AnalysisRule: {
	Policy: #ConfiguredTableAnalysisRulePolicy
	Type: #ConfiguredTableAnalysisRuleType
}

#AnalysisRuleAggregation: {
	AdditionalAnalyses?: #AdditionalAnalyses
	AggregateColumns: [...#AggregateColumn]
	AllowedJoinOperators?: [...#JoinOperator]
	DimensionColumns: [...#AnalysisRuleColumnName]
	JoinColumns: [...#AnalysisRuleColumnName]
	JoinRequired?: #JoinRequiredOption
	OutputConstraints: [...#AggregationConstraint]
	ScalarFunctions: [...#ScalarFunctions]
}

#AnalysisRuleColumnName: string & =~"^[a-z0-9_](([a-z0-9_ ]+-)*([a-z0-9_ ]+))?$" & strings.MinRunes(1) & strings.MaxRunes(127)

#AnalysisRuleCustom: {
	AdditionalAnalyses?: #AdditionalAnalyses
	AllowedAnalyses: #AllowedAnalyses
	AllowedAnalysisProviders?: #AllowedAnalysisProviders
	DifferentialPrivacy?: #DifferentialPrivacy
	DisallowedOutputColumns?: #DisallowedOutputColumns
}

#AnalysisRuleList: {
	AdditionalAnalyses?: #AdditionalAnalyses
	AllowedJoinOperators?: [...#JoinOperator]
	JoinColumns: [...#AnalysisRuleColumnName]
	ListColumns: [...#AnalysisRuleColumnName]
}

#AthenaTableReference: {
	CatalogName?: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	DatabaseName: string & strings.MaxRunes(128)
	OutputLocation?: string & strings.MinRunes(8) & strings.MaxRunes(1024)
	Region?: #CommercialRegion
	TableName: string & strings.MaxRunes(128)
	WorkGroup: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#CommercialRegion: "us-west-1" | "us-west-2" | "us-east-1" | "us-east-2" | "af-south-1" | "ap-east-1" | "ap-south-2" | "ap-southeast-1" | "ap-southeast-2" | "ap-southeast-5" | "ap-southeast-4" | "ap-southeast-7" | "ap-south-1" | "ap-northeast-3" | "ap-northeast-1" | "ap-northeast-2" | "ca-central-1" | "ca-west-1" | "eu-south-1" | "eu-west-3" | "eu-south-2" | "eu-central-2" | "eu-central-1" | "eu-north-1" | "eu-west-1" | "eu-west-2" | "me-south-1" | "me-central-1" | "il-central-1" | "sa-east-1" | "mx-central-1" | "ap-east-2"

#ConfiguredTableAnalysisRulePolicy: {
	V1: #ConfiguredTableAnalysisRulePolicyV1
}

#ConfiguredTableAnalysisRulePolicyV1: {
	List: #AnalysisRuleList
} | {
	Aggregation: #AnalysisRuleAggregation
} | {
	Custom: #AnalysisRuleCustom
}

#ConfiguredTableAnalysisRuleType: "AGGREGATION" | "LIST" | "CUSTOM"

#DifferentialPrivacy: {
	Columns: [...#DifferentialPrivacyColumn]
}

#DifferentialPrivacyColumn: {
	Name: string
}

#DisallowedOutputColumns: [...#AnalysisRuleColumnName]

#GlueTableReference: {
	DatabaseName: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MaxRunes(128)
	Region?: #CommercialRegion
	TableName: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MaxRunes(128)
}

#JoinOperator: "OR" | "AND"

#JoinRequiredOption: "QUERY_RUNNER"

#ScalarFunctions: "TRUNC" | "ABS" | "CEILING" | "FLOOR" | "LN" | "LOG" | "ROUND" | "SQRT" | "CAST" | "LOWER" | "RTRIM" | "UPPER" | "COALESCE" | "CONVERT" | "CURRENT_DATE" | "DATEADD" | "EXTRACT" | "GETDATE" | "SUBSTRING" | "TO_CHAR" | "TO_DATE" | "TO_NUMBER" | "TO_TIMESTAMP" | "TRIM"

#SelectedAnalysisMethod: "DIRECT_QUERY" | "DIRECT_JOB"

#SelectedAnalysisMethods: [...#SelectedAnalysisMethod]

#SnowflakeTableReference: {
	AccountIdentifier: string & strings.MinRunes(3) & strings.MaxRunes(256)
	DatabaseName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	SchemaName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	SecretArn: string & strings.MaxRunes(256)
	TableName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	TableSchema: #SnowflakeTableSchema
}

#SnowflakeTableSchema: {
	V1: [...#SnowflakeTableSchemaV1]
}

#SnowflakeTableSchemaV1: {
	ColumnName: string & strings.MaxRunes(128)
	ColumnType: string & strings.MaxRunes(255)
}

#TableReference: {
	Glue: #GlueTableReference
} | {
	Snowflake: #SnowflakeTableReference
} | {
	Athena: #AthenaTableReference
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
