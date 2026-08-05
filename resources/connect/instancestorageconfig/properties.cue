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

#AssociationId: string & =~"^[-a-z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)

#BucketName: string & strings.MinRunes(1) & strings.MaxRunes(128)

#EncryptionConfig: {
	EncryptionType: #EncryptionType
	KeyId: #KeyId
}

#EncryptionType: "KMS"

#FirehoseDeliveryStreamArn: string & =~"^arn:aws[-a-z0-9]*:firehose:[-a-z0-9]*:[0-9]{12}:deliverystream/[-a-zA-Z0-9_.]*$"

#Hours: number

#InstanceStorageResourceType: "CHAT_TRANSCRIPTS" | "CALL_RECORDINGS" | "SCHEDULED_REPORTS" | "MEDIA_STREAMS" | "CONTACT_TRACE_RECORDS" | "AGENT_EVENTS" | "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS" | "ATTACHMENTS" | "CONTACT_EVALUATIONS" | "SCREEN_RECORDINGS" | "REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS" | "REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS" | "EMAIL_MESSAGES"

#KeyId: string & strings.MinRunes(1) & strings.MaxRunes(128)

#KinesisFirehoseConfig: {
	FirehoseArn: #FirehoseDeliveryStreamArn
}

#KinesisStreamArn: string & =~"^arn:aws[-a-z0-9]*:kinesis:[-a-z0-9]*:[0-9]{12}:stream/[-a-zA-Z0-9_.]*$"

#KinesisStreamConfig: {
	StreamArn: #KinesisStreamArn
}

#KinesisVideoStreamConfig: {
	EncryptionConfig: #EncryptionConfig
	Prefix: #Prefix
	RetentionPeriodHours: #Hours
}

#Prefix: string & strings.MinRunes(1) & strings.MaxRunes(128)

#S3Config: {
	BucketName: #BucketName
	BucketPrefix: #Prefix
	EncryptionConfig?: #EncryptionConfig
}

#StorageType: "S3" | "KINESIS_VIDEO_STREAM" | "KINESIS_STREAM" | "KINESIS_FIREHOSE"
