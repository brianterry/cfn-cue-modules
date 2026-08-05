package deliverychannel

#Properties: {
	ConfigSnapshotDeliveryProperties?: #ConfigSnapshotDeliveryProperties
	Name?: string
	S3BucketName: string
	S3KeyPrefix?: string
	S3KmsKeyArn?: string
	SnsTopicARN?: string
}

#ConfigSnapshotDeliveryProperties: {
	DeliveryFrequency?: string
}
