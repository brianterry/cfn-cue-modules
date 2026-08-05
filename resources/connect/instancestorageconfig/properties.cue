package instancestorageconfig

#Properties: {
	// Connect Instance ID with which the storage config will be associated
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	KinesisFirehoseConfig?: #KinesisFirehoseConfig
	KinesisStreamConfig?: #KinesisStreamConfig
	KinesisVideoStreamConfig?: #KinesisVideoStreamConfig
	ResourceType: #InstanceStorageResourceType
	S3Config?: #S3Config
	StorageType: #StorageType
}

#EncryptionConfig: {
	EncryptionType: #EncryptionType
	KeyId: #KeyId
}

#KinesisFirehoseConfig: {
	FirehoseArn: #FirehoseDeliveryStreamArn
}

#KinesisStreamConfig: {
	StreamArn: #KinesisStreamArn
}

#KinesisVideoStreamConfig: {
	EncryptionConfig: #EncryptionConfig
	Prefix: #Prefix
	RetentionPeriodHours: #Hours
}

#S3Config: {
	BucketName: #BucketName
	BucketPrefix: #Prefix
	EncryptionConfig?: #EncryptionConfig
}
