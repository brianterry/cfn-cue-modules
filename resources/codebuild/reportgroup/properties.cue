package reportgroup

#Properties: {
	DeleteReports?: bool
	ExportConfig: #ReportExportConfig
	Name?: string
	Tags?: [...#Tag]
	Type: string
}

#ReportExportConfig: {
	ExportConfigType: string
	S3Destination?: #S3ReportExportConfig
}

#S3ReportExportConfig: {
	Bucket: string
	BucketOwner?: string
	EncryptionDisabled?: bool
	EncryptionKey?: string
	Packaging?: string
	Path?: string
}

#Tag: {
	Key: string
	Value: string
}
