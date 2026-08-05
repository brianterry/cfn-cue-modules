package export

import "strings"

#Properties: {
	Tags?: [...#ResourceTag]
}

#CompressionOption: "GZIP" | "PARQUET" | "ZIP"

#DataQuery: {
	QueryStatement: string & =~"^[\\S\\s]*$" & strings.MinRunes(1) & strings.MaxRunes(36000)
	TableConfigurations?: #TableConfigurations
}

#DestinationConfigurations: {
	S3Destination: #S3Destination
}

#Export: {
	DataQuery: #DataQuery
	Description?: string & =~"^[\\S\\s]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	DestinationConfigurations: #DestinationConfigurations
	ExportArn?: string & =~"^arn:aws[-a-z0-9]*:(bcm-data-exports):[-a-z0-9]*:[0-9]{12}:[-a-zA-Z0-9/:_]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Name: string & =~"^[0-9A-Za-z\\-_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	RefreshCadence: #RefreshCadence
}

#FormatOption: "TEXT_OR_CSV" | "PARQUET"

#FrequencyOption: "SYNCHRONOUS"

#OverwriteOption: "CREATE_NEW_REPORT" | "OVERWRITE_REPORT"

#RefreshCadence: {
	Frequency: #FrequencyOption
}

#ResourceTag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#S3Destination: {
	S3Bucket: string & =~"^[\\S\\s]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	S3BucketOwner?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	S3OutputConfigurations: #S3OutputConfigurations
	S3Prefix: string & =~"^[\\S\\s]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	S3Region: string & =~"^[\\S\\s]*$" & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#S3OutputConfigurations: {
	Compression: #CompressionOption
	Format: #FormatOption
	OutputType: #S3OutputType
	Overwrite: #OverwriteOption
}

#S3OutputType: "CUSTOM" | "ATHENA" | "REDSHIFT"

#TableConfigurations: {...}

#TableProperties: {...}
