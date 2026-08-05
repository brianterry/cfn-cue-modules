package truststorerevocation

#Properties: {
	// The attributes required to create a trust store revocation.
	RevocationContents?: [...#RevocationContent]
	// The Amazon Resource Name (ARN) of the trust store.
	TrustStoreArn?: string
}

#RevocationContent: {
	RevocationType?: string
	S3Bucket?: string
	S3Key?: string
	S3ObjectVersion?: string
}

#RevocationId: string

#TrustStoreRevocation: {
	NumberOfRevokedEntries?: int
	RevocationId?: string
	RevocationType?: string
	TrustStoreArn?: string
}
