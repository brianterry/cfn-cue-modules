package publickey

#Properties: {
	// Configuration information about a public key that you can use with [signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html), or with [field-level encryption](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).
	PublicKeyConfig: #PublicKeyConfig
}

#PublicKeyConfig: {
	// A string included in the request to help make sure that the request can't be replayed.
	CallerReference: string
	// A comment to describe the public key. The comment cannot be longer than 128 characters.
	Comment?: string
	// The public key that you can use with [signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html), or with [field-level encryption](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).
	EncodedKey: string
	// A name to help identify the public key.
	Name: string
}
