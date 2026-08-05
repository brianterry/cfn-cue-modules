package logdeliveryconfiguration

#Properties: {
	LogConfigurations?: #LogConfigurations
	UserPoolId: string
}

#CloudWatchLogsConfiguration: {
	LogGroupArn?: string
}

#FirehoseConfiguration: {
	StreamArn?: string
}

#LogConfiguration: {
	CloudWatchLogsConfiguration?: #CloudWatchLogsConfiguration
	EventSource?: string
	FirehoseConfiguration?: #FirehoseConfiguration
	LogLevel?: string
	S3Configuration?: #S3Configuration
}

#S3Configuration: {
	BucketArn?: string
}
