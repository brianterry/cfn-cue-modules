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

#AggregateColumn: {
	ColumnNames: [...#AnalysisRuleColumnName]
	Function: #AggregateFunctionName
}

#AggregationConstraint: {
	ColumnName: #AnalysisRuleColumnName
	Minimum: number & >=2 & <=100000
	Type: #AggregationType
}

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

#ConfiguredTableAnalysisRulePolicy: {
	V1: #ConfiguredTableAnalysisRulePolicyV1
}

#DifferentialPrivacy: {
	Columns: [...#DifferentialPrivacyColumn]
}

#DifferentialPrivacyColumn: {
	Name: string
}

#GlueTableReference: {
	DatabaseName: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MaxRunes(128)
	Region?: #CommercialRegion
	TableName: string & =~"^[a-zA-Z0-9_](([a-zA-Z0-9_ ]+-)*([a-zA-Z0-9_ ]+))?$" & strings.MaxRunes(128)
}

#SnowflakeTableReference: {
	AccountIdentifier: string & strings.MinRunes(3) & strings.MaxRunes(256)
	DatabaseName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	SchemaName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	SecretArn: string & strings.MaxRunes(256)
	TableName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	TableSchema: #SnowflakeTableSchema
}

#SnowflakeTableSchemaV1: {
	ColumnName: string & strings.MaxRunes(128)
	ColumnType: string & strings.MaxRunes(255)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
