package applicationoutput

#Properties: {
	ApplicationName: string
	Output: #Output
}

#DestinationSchema: {
	RecordFormatType?: string
}

#KinesisFirehoseOutput: {
	ResourceARN: string
	RoleARN: string
}

#KinesisStreamsOutput: {
	ResourceARN: string
	RoleARN: string
}

#LambdaOutput: {
	ResourceARN: string
	RoleARN: string
}

#Output: {
	DestinationSchema: #DestinationSchema
	KinesisFirehoseOutput?: #KinesisFirehoseOutput
	KinesisStreamsOutput?: #KinesisStreamsOutput
	LambdaOutput?: #LambdaOutput
	Name?: string
}
