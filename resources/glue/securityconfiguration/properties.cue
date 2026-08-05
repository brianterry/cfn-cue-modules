package securityconfiguration

#Properties: {
	EncryptionConfiguration: #EncryptionConfiguration
	Name: string
}

#CloudWatchEncryption: {
	CloudWatchEncryptionMode?: string
	KmsKeyArn?: string
}

#EncryptionConfiguration: {
	CloudWatchEncryption?: #CloudWatchEncryption
	JobBookmarksEncryption?: #JobBookmarksEncryption
	S3Encryptions?: [...#S3Encryption]
}

#JobBookmarksEncryption: {
	JobBookmarksEncryptionMode?: string
	KmsKeyArn?: string
}

#S3Encryption: {
	KmsKeyArn?: string
	S3EncryptionMode?: string
}
