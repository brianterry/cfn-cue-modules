package truststore

import "strings"

#Properties: {
	// A CA certificates bundle source.
	CaCertificatesBundleSource?: #CaCertificatesBundleSource
	// The trust store's name.
	Name: string
	// A complex type that contains zero or more ``Tag`` elements.
	Tags?: [...#Tag]
	// A boolean. When true, performs real-time certificate revocation checks by querying the OCSP endpoint specified within the client certificate.
	UseClientCertificateOCSPEndpoint?: bool
}

#CaCertificatesBundleS3Location: {
	// The S3 bucket.
	Bucket: string
	// The location's key.
	Key: string
	// The location's Region.
	Region: string
	// The location's version.
	Version?: string
}

#CaCertificatesBundleSource: {
	// The CA certificates bundle location in Amazon S3.
	CaCertificatesBundleS3Location: #CaCertificatesBundleS3Location
}

#Tag: {
	// A string that contains ``Tag`` key.
	// The string length should be between 1 and 128 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string that contains an optional ``Tag`` value.
	// The string length should be between 0 and 256 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
