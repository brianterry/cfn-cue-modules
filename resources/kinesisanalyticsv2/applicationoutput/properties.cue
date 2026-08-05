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
}

#KinesisStreamsOutput: {
	ResourceARN: string
}

#LambdaOutput: {
	ResourceARN: string
}

#Output: {
	DestinationSchema: #DestinationSchema
	KinesisFirehoseOutput?: #KinesisFirehoseOutput
	KinesisStreamsOutput?: #KinesisStreamsOutput
	LambdaOutput?: #LambdaOutput
	Name?: string
}
