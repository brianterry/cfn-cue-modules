package vpcorigin

#Properties: {
	// A complex type that contains zero or more ``Tag`` elements.
	Tags?: [...#Tag]
	// The VPC origin endpoint configuration.
	VpcOriginEndpointConfig: #VpcOriginEndpointConfig
}

#Tag: {
	// A string that contains ``Tag`` key.
	// The string length should be between 1 and 128 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Key: string
	// A string that contains an optional ``Tag`` value.
	// The string length should be between 0 and 256 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Value: string
}

#VpcOriginEndpointConfig: {
	// The ARN of the CloudFront VPC origin endpoint configuration.
	Arn: string
	// The HTTP port for the CloudFront VPC origin endpoint configuration. The default value is ``80``.
	HTTPPort?: int
	// The HTTPS port of the CloudFront VPC origin endpoint configuration. The default value is ``443``.
	HTTPSPort?: int
	IpAddressType?: "ipv4" | "dualstack"
	// The name of the CloudFront VPC origin endpoint configuration.
	Name: string
	// The origin protocol policy for the CloudFront VPC origin endpoint configuration.
	OriginProtocolPolicy?: string
	// Specifies the minimum SSL/TLS protocol that CloudFront uses when connecting to your origin over HTTPS. Valid values include ``SSLv3``, ``TLSv1``, ``TLSv1.1``, and ``TLSv1.2``.
	// For more information, see [Minimum Origin SSL Protocol](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginSSLProtocols) in the *Amazon CloudFront Developer Guide*.
	OriginSSLProtocols?: [...string]
}
