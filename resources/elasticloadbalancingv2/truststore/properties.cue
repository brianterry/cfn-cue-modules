package truststore

#Properties: {
	// The name of the S3 bucket to fetch the CA certificate bundle from.
	CaCertificatesBundleS3Bucket?: string
	// The name of the S3 object to fetch the CA certificate bundle from.
	CaCertificatesBundleS3Key?: string
	// The version of the S3 bucket that contains the CA certificate bundle.
	CaCertificatesBundleS3ObjectVersion?: string
	// The name of the trust store.
	Name?: string
	// The tags to assign to the trust store.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
