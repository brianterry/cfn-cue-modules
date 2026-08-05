package reportdefinition

import "strings"

#Properties: {
	// A list of manifests that you want Amazon Web Services to create for this report.
	AdditionalArtifacts?: [..."REDSHIFT" | "QUICKSIGHT" | "ATHENA"]
	// A list of strings that indicate additional content that Amazon Web Services includes in the report, such as individual resource IDs.
	AdditionalSchemaElements?: [..."RESOURCES" | "SPLIT_COST_ALLOCATION_DATA" | "MANUAL_DISCOUNT_COMPATIBILITY"]
	// The Amazon resource name of the billing view. You can get this value by using the billing view service public APIs.
	BillingViewArn?: string & =~"(arn:aws(-cn)?:billing::[0-9]{12}:billingview/)?[a-zA-Z0-9_\\+=\\.\\-@].{1,30}" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The compression format that AWS uses for the report.
	Compression: "ZIP" | "GZIP" | "Parquet"
	// The format that AWS saves the report in.
	Format: "textORcsv" | "Parquet"
	// Whether you want Amazon Web Services to update your reports after they have been finalized if Amazon Web Services detects charges related to previous months. These charges can include refunds, credits, or support fees.
	RefreshClosedReports: bool
	// The name of the report that you want to create. The name must be unique, is case sensitive, and can't include spaces.
	ReportName: string & =~"[0-9A-Za-z!\\-_.*\\'()]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Whether you want Amazon Web Services to overwrite the previous version of each report or to deliver the report in addition to the previous versions.
	ReportVersioning: "CREATE_NEW_REPORT" | "OVERWRITE_REPORT"
	// The S3 bucket where AWS delivers the report.
	S3Bucket: string & =~"[A-Za-z0-9_\\.\\-]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The prefix that AWS adds to the report name when AWS delivers the report. Your prefix can't include spaces.
	S3Prefix: string & =~"[0-9A-Za-z!\\-_.*\\'()/]*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The region of the S3 bucket that AWS delivers the report into.
	S3Region: string
	Tags?: [...#Tag]
	// The granularity of the line items in the report.
	TimeUnit: "HOURLY" | "DAILY" | "MONTHLY"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
