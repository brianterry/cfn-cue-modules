package preferences

#Properties: {
	// The set of preferences used for recording RDP connections in the requesting AWS account and AWS Region. This includes details such as which S3 bucket recordings are stored in.
	ConnectionRecordingPreferences?: {
		KMSKeyArn: #KMSKeyArn
		RecordingDestinations: #RecordingDestinations
	}
}

#RecordingDestinations: {
	S3Buckets: #S3Buckets
}

#S3Bucket: {
	BucketName: #BucketName
	BucketOwner: #BucketOwner
}
