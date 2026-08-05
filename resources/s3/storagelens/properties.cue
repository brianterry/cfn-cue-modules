package storagelens

import "strings"

#Properties: {
	// A set of tags (key-value pairs) for this Amazon S3 Storage Lens configuration.
	Tags?: [...#Tag]
}

#AccountLevel: {
	ActivityMetrics?: #ActivityMetrics
	AdvancedCostOptimizationMetrics?: #AdvancedCostOptimizationMetrics
	AdvancedDataProtectionMetrics?: #AdvancedDataProtectionMetrics
	AdvancedPerformanceMetrics?: #AdvancedPerformanceMetrics
	BucketLevel: #BucketLevel
	DetailedStatusCodesMetrics?: #DetailedStatusCodesMetrics
	StorageLensGroupLevel?: #StorageLensGroupLevel
}

#ActivityMetrics: {
	// Specifies whether activity metrics are enabled or disabled.
	IsEnabled?: bool
}

#AdvancedCostOptimizationMetrics: {
	// Specifies whether advanced cost optimization metrics are enabled or disabled.
	IsEnabled?: bool
}

#AdvancedDataProtectionMetrics: {
	// Specifies whether advanced data protection metrics are enabled or disabled.
	IsEnabled?: bool
}

#AdvancedPerformanceMetrics: {
	// Specifies whether the Advanced Performance Metrics is enabled or disabled.
	IsEnabled?: bool
}

#AwsOrg: {
	Arn: #Arn
}

#BucketLevel: {
	ActivityMetrics?: #ActivityMetrics
	AdvancedCostOptimizationMetrics?: #AdvancedCostOptimizationMetrics
	AdvancedDataProtectionMetrics?: #AdvancedDataProtectionMetrics
	AdvancedPerformanceMetrics?: #AdvancedPerformanceMetrics
	DetailedStatusCodesMetrics?: #DetailedStatusCodesMetrics
	PrefixLevel?: #PrefixLevel
}

#BucketsAndRegions: {
	Buckets?: [...#Arn]
	Regions?: [...string]
}

#CloudWatchMetrics: {
	// Specifies whether CloudWatch metrics are enabled or disabled.
	IsEnabled: bool
}

#DataExport: {
	CloudWatchMetrics?: #CloudWatchMetrics
	S3BucketDestination?: #S3BucketDestination
	StorageLensTableDestination?: #StorageLensTableDestination
}

#DetailedStatusCodesMetrics: {
	// Specifies whether detailed status codes metrics are enabled or disabled.
	IsEnabled?: bool
}

#PrefixLevel: {
	StorageMetrics: #PrefixLevelStorageMetrics
}

#PrefixLevelStorageMetrics: {
	// Specifies whether prefix-level storage metrics are enabled or disabled.
	IsEnabled?: bool
	SelectionCriteria?: #SelectionCriteria
}

#S3BucketDestination: {
	// The AWS account ID that owns the destination S3 bucket.
	AccountId: string
	// The ARN of the bucket to which Amazon S3 Storage Lens exports will be placed.
	Arn: string
	Encryption?: #Encryption
	// Specifies the file format to use when exporting Amazon S3 Storage Lens metrics export.
	Format: "CSV" | "Parquet"
	// The version of the output schema to use when exporting Amazon S3 Storage Lens metrics.
	OutputSchemaVersion: "V_1"
	// The prefix to use for Amazon S3 Storage Lens export.
	Prefix?: string
}

#SSEKMS: {
	// The ARN of the KMS key to use for encryption.
	KeyId: string
}

#SelectionCriteria: {
	// Delimiter to divide S3 key into hierarchy of prefixes.
	Delimiter?: string
	// Max depth of prefixes of S3 key that Amazon S3 Storage Lens will analyze.
	MaxDepth?: int
	// The minimum storage bytes threshold for the prefixes to be included in the analysis.
	MinStorageBytesPercentage?: number
}

#StorageLensConfiguration: {
	AccountLevel: #AccountLevel
	AwsOrg?: #AwsOrg
	DataExport?: #DataExport
	Exclude?: #BucketsAndRegions
	ExpandedPrefixesDataExport?: #StorageLensExpandedPrefixesDataExport
	Id: #Id
	Include?: #BucketsAndRegions
	// Specifies whether the Amazon S3 Storage Lens configuration is enabled or disabled.
	IsEnabled: bool
	// The delimiter to divide S3 key into hierarchy of prefixes.
	PrefixDelimiter?: string
	// The ARN for the Amazon S3 Storage Lens configuration.
	StorageLensArn?: string
}

#StorageLensExpandedPrefixesDataExport: {
	S3BucketDestination?: #S3BucketDestination
	StorageLensTableDestination?: #StorageLensTableDestination
}

#StorageLensGroupLevel: {
	StorageLensGroupSelectionCriteria?: #StorageLensGroupSelectionCriteria
}

#StorageLensGroupSelectionCriteria: {
	Exclude?: [...#StorageLensGroupArn]
	Include?: [...#StorageLensGroupArn]
}

#StorageLensTableDestination: {
	Encryption?: #Encryption
	// Specifies whether the export to S3 Tables is enabled or disabled.
	IsEnabled: bool
}

#Tag: {
	Key: string & =~"^(?!aws:.*)[a-zA-Z0-9\\s\\_\\.\\/\\=\\+\\-\\@\\:]+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	Value: string & =~"^(?!aws:.*)[a-zA-Z0-9\\s\\_\\.\\/\\=\\+\\-\\@\\:]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
}
