package dataset

import "strings"

#Properties: {
	// Dataset format
	Format?: "CSV" | "JSON" | "PARQUET" | "EXCEL" | "ORC"
	// Format options for dataset
	FormatOptions?: #FormatOptions
	// Input
	Input: #Input
	// Dataset name
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// PathOptions
	PathOptions?: #PathOptions
	// Source type of the dataset
	Source?: "S3" | "DATA-CATALOG" | "DATABASE"
	Tags?: [...#Tag]
}

#CsvOptions: {
	Delimiter?: string & strings.MinRunes(1) & strings.MaxRunes(1)
	HeaderRow?: bool
}

#DataCatalogInputDefinition: {
	// Catalog id
	CatalogId?: string
	// Database name
	DatabaseName?: string
	// Table name
	TableName?: string
	TempDirectory?: #S3Location
}

#DatabaseInputDefinition: {
	// Database table name
	DatabaseTableName?: string
	// Glue connection name
	GlueConnectionName: string
	// Custom SQL to run against the provided AWS Glue connection. This SQL will be used as the input for DataBrew projects and jobs.
	QueryString?: string
	TempDirectory?: #S3Location
}

#DatasetParameter: {
	// Add the value of this parameter as a column in a dataset.
	CreateColumn?: bool
	DatetimeOptions?: #DatetimeOptions
	Filter?: #FilterExpression
	Name: #PathParameterName
	// Parameter type
	Type: "String" | "Number" | "Datetime"
}

#DatetimeOptions: {
	// Date/time format of a date parameter
	Format: string & strings.MinRunes(2) & strings.MaxRunes(100)
	// Locale code for a date parameter
	LocaleCode?: string & =~"^[A-Za-z0-9_\\.#@\\-]+$" & strings.MinRunes(2) & strings.MaxRunes(100)
	// Timezone offset
	TimezoneOffset?: string & =~"^(Z|[-+](\\d|\\d{2}|\\d{2}:?\\d{2}))$" & strings.MinRunes(1) & strings.MaxRunes(6)
}

#ExcelOptions: {
	HeaderRow?: bool
	SheetIndexes?: [...int]
	SheetNames?: [...string]
}

#FilesLimit: {
	// Maximum number of files
	MaxFiles: int
	// Order
	Order?: "ASCENDING" | "DESCENDING"
	// Ordered by
	OrderedBy?: "LAST_MODIFIED_DATE"
}

#FilterExpression: {
	// Filtering expression for a parameter
	Expression: string & =~"^[><0-9A-Za-z_.,:)(!= ]+$" & strings.MinRunes(4) & strings.MaxRunes(1024)
	ValuesMap: [...#FilterValue]
}

#FilterValue: {
	Value: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// Variable name
	ValueReference: string & =~"^:[A-Za-z0-9_]+$" & strings.MinRunes(2) & strings.MaxRunes(128)
}

#FormatOptions: {
	Csv?: #CsvOptions
	Excel?: #ExcelOptions
	Json?: #JsonOptions
}

#Input: {
	DataCatalogInputDefinition?: #DataCatalogInputDefinition
	DatabaseInputDefinition?: #DatabaseInputDefinition
	Metadata?: #Metadata
	S3InputDefinition?: #S3Location
}

#JsonOptions: {
	MultiLine?: bool
}

#Metadata: {
	// Arn of the source of the dataset. For e.g.: AppFlow Flow ARN.
	SourceArn?: string
}

#PathOptions: {
	FilesLimit?: #FilesLimit
	LastModifiedDateCondition?: #FilterExpression
	Parameters?: [...#PathParameter]
}

#PathParameter: {
	DatasetParameter: #DatasetParameter
	PathParameterName: #PathParameterName
}

#S3Location: {
	Bucket: string
	BucketOwner?: #BucketOwner
	Key?: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
