package preferences

#Properties: {
	// The set of preferences used for recording RDP connections in the requesting AWS account and AWS Region. This includes details such as which S3 bucket recordings are stored in.
	ConnectionRecordingPreferences?: {
		KMSKeyArn: #KMSKeyArn
		RecordingDestinations: #RecordingDestinations
	}
}

#BucketName: string & =~"(?=^.{3,63}$)(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)"

#BucketOwner: string & =~"^[0-9]{12}$"

#KMSKeyArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#RecordingDestinations: {
	S3Buckets: #S3Buckets
}

#S3Bucket: {
	BucketName: #BucketName
	BucketOwner: #BucketOwner
}

#S3Buckets: [...#S3Bucket]
