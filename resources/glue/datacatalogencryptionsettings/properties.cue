package datacatalogencryptionsettings

#Properties: {
	// The ID of the Data Catalog in which the settings are created.
	CatalogId: string
	DataCatalogEncryptionSettings: #DataCatalogEncryptionSettings
}

#ConnectionPasswordEncryption: {
	// An AWS KMS key that is used to encrypt the connection password.
	KmsKeyId?: string
	// When the ReturnConnectionPasswordEncrypted flag is set to 'true', passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently from catalog encryption.
	ReturnConnectionPasswordEncrypted?: bool
}

#DataCatalogEncryptionSettings: {
	ConnectionPasswordEncryption?: #ConnectionPasswordEncryption
	EncryptionAtRest?: #EncryptionAtRest
}

#EncryptionAtRest: {
	// The encryption-at-rest mode for encrypting Data Catalog data.
	CatalogEncryptionMode?: string
	// The role that AWS Glue assumes to encrypt and decrypt the Data Catalog objects on the caller's behalf.
	CatalogEncryptionServiceRole?: string
	// The ID of the AWS KMS key to use for encryption at rest.
	SseAwsKmsKeyId?: string
}
