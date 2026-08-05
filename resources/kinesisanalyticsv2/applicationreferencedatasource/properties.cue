package applicationreferencedatasource

#Properties: {
	ApplicationName: string
	ReferenceDataSource: #ReferenceDataSource
}

#CSVMappingParameters: {
	RecordColumnDelimiter: string
	RecordRowDelimiter: string
}

#JSONMappingParameters: {
	RecordRowPath: string
}

#MappingParameters: {
	CSVMappingParameters?: #CSVMappingParameters
	JSONMappingParameters?: #JSONMappingParameters
}

#RecordColumn: {
	Mapping?: string
	Name: string
	SqlType: string
}

#RecordFormat: {
	MappingParameters?: #MappingParameters
	RecordFormatType: string
}

#ReferenceDataSource: {
	ReferenceSchema: #ReferenceSchema
	S3ReferenceDataSource?: #S3ReferenceDataSource
	TableName?: string
}

#ReferenceSchema: {
	RecordColumns: [...#RecordColumn]
	RecordEncoding?: string
	RecordFormat: #RecordFormat
}

#S3ReferenceDataSource: {
	BucketARN: string
	FileKey: string
}
