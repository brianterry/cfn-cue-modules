package job

import "strings"

#Properties: {
	DataCatalogOutputs?: [...#DataCatalogOutput]
	DatabaseOutputs?: [...#DatabaseOutput]
	// Dataset name
	DatasetName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Encryption Key Arn
	EncryptionKeyArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Encryption mode
	EncryptionMode?: "SSE-KMS" | "SSE-S3"
	// Job Sample
	JobSample?: #JobSample
	// Log subscription
	LogSubscription?: "ENABLE" | "DISABLE"
	// Max capacity
	MaxCapacity?: int
	// Max retries
	MaxRetries?: int
	// Job name
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Output location
	OutputLocation?: #OutputLocation
	Outputs?: [...#Output]
	// Profile Job configuration
	ProfileConfiguration?: #ProfileConfiguration
	// Project name
	ProjectName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Recipe?: #Recipe
	// Role arn
	RoleArn: string
	Tags?: [...#Tag]
	// Timeout
	Timeout?: int
	// Job type
	Type: "PROFILE" | "RECIPE"
	// Data quality rules configuration
	ValidationConfigurations?: [...#ValidationConfiguration]
}

#AllowedStatistics: {
	Statistics: [...#Statistic]
}

#ColumnSelector: {
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Regex?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#ColumnStatisticsConfiguration: {
	Selectors?: [...#ColumnSelector]
	Statistics: #StatisticsConfiguration
}

#CsvOutputOptions: {
	Delimiter?: string & strings.MinRunes(1) & strings.MaxRunes(1)
}

#DataCatalogOutput: {
	CatalogId?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	DatabaseName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	DatabaseOptions?: #DatabaseTableOutputOptions
	Overwrite?: bool
	S3Options?: #S3TableOutputOptions
	TableName: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#DatabaseOutput: {
	DatabaseOptions: #DatabaseTableOutputOptions
	// Database table name
	DatabaseOutputMode?: "NEW_TABLE"
	// Glue connection name
	GlueConnectionName: string
}

#DatabaseTableOutputOptions: {
	TableName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	TempDirectory?: #S3Location
}

#EntityDetectorConfiguration: {
	AllowedStatistics?: #AllowedStatistics
	EntityTypes: [...string & =~"^[A-Z_][A-Z\\\\d_]*$" & strings.MinRunes(1) & strings.MaxRunes(128)]
}

#JobSample: {
	Mode?: #SampleMode
	Size?: #JobSize
}

#Output: {
	CompressionFormat?: "GZIP" | "LZ4" | "SNAPPY" | "BZIP2" | "DEFLATE" | "LZO" | "BROTLI" | "ZSTD" | "ZLIB"
	Format?: "CSV" | "JSON" | "PARQUET" | "GLUEPARQUET" | "AVRO" | "ORC" | "XML" | "TABLEAUHYPER"
	FormatOptions?: #OutputFormatOptions
	Location: #S3Location
	MaxOutputFiles?: int & >=1 & <=999
	Overwrite?: bool
	PartitionColumns?: [...string]
}

#OutputFormatOptions: {
	Csv?: #CsvOutputOptions
}

#OutputLocation: {
	Bucket: string
	BucketOwner?: string & strings.MinRunes(12) & strings.MaxRunes(12)
	Key?: string
}

#ProfileConfiguration: {
	ColumnStatisticsConfigurations?: [...#ColumnStatisticsConfiguration]
	DatasetStatisticsConfiguration?: #StatisticsConfiguration
	EntityDetectorConfiguration?: #EntityDetectorConfiguration
	ProfileColumns?: [...#ColumnSelector]
}

#Recipe: {
	// Recipe name
	Name: string
	// Recipe version
	Version?: string
}

#S3Location: {
	Bucket: string
	BucketOwner?: string & strings.MinRunes(12) & strings.MaxRunes(12)
	Key?: string
}

#S3TableOutputOptions: {
	Location: #S3Location
}

#StatisticOverride: {
	Parameters: #ParameterMap
	Statistic: #Statistic
}

#StatisticsConfiguration: {
	IncludedStatistics?: [...#Statistic]
	Overrides?: [...#StatisticOverride]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#ValidationConfiguration: {
	// Arn of the Ruleset
	RulesetArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	ValidationMode?: #ValidationMode
}
