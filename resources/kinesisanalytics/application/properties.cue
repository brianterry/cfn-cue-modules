package application

#Properties: {
	ApplicationCode?: string
	ApplicationDescription?: string
	ApplicationName?: string
	Inputs: [...#Input]
}

#CSVMappingParameters: {
	RecordColumnDelimiter: string
	RecordRowDelimiter: string
}

#Input: {
	InputParallelism?: #InputParallelism
	InputProcessingConfiguration?: #InputProcessingConfiguration
	InputSchema: #InputSchema
	KinesisFirehoseInput?: #KinesisFirehoseInput
	KinesisStreamsInput?: #KinesisStreamsInput
	NamePrefix: string
}

#InputLambdaProcessor: {
	ResourceARN: string
	RoleARN: string
}

#InputParallelism: {
	Count?: int
}

#InputProcessingConfiguration: {
	InputLambdaProcessor?: #InputLambdaProcessor
}

#InputSchema: {
	RecordColumns: [...#RecordColumn]
	RecordEncoding?: string
	RecordFormat: #RecordFormat
}

#JSONMappingParameters: {
	RecordRowPath: string
}

#KinesisFirehoseInput: {
	ResourceARN: string
	RoleARN: string
}

#KinesisStreamsInput: {
	ResourceARN: string
	RoleARN: string
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
