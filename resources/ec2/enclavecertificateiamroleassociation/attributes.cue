package enclavecertificateiamroleassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The name of the Amazon S3 bucket to which the certificate was uploaded.
	CertificateS3BucketName: string
	// The Amazon S3 object key where the certificate, certificate chain, and encrypted private key bundle are stored.
	CertificateS3ObjectKey: string
	// The ID of the AWS KMS CMK used to encrypt the private key of the certificate.
	EncryptionKmsKeyId: string
}
