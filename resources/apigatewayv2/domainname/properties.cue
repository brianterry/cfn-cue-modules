package domainname

#Properties: {
	// The custom domain name for your API in Amazon API Gateway. Uppercase letters and the underscore (``_``) character are not supported.
	DomainName: string
	// The domain name configurations.
	DomainNameConfigurations?: [...#DomainNameConfiguration]
	// The mutual TLS authentication configuration for a custom domain name.
	MutualTlsAuthentication?: #MutualTlsAuthentication
	// The routing mode API Gateway uses to route traffic to your APIs.
	RoutingMode?: "API_MAPPING_ONLY" | "ROUTING_RULE_THEN_API_MAPPING" | "ROUTING_RULE_ONLY"
	// The collection of tags associated with a domain name.
	Tags?: {...}
}

#DomainNameConfiguration: {
	// An AWS-managed certificate that will be used by the edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.
	CertificateArn?: string
	// The user-friendly name of the certificate that will be used by the edge-optimized endpoint for this domain name.
	CertificateName?: string
	// The endpoint type.
	EndpointType?: string
	// The IP address types that can invoke the domain name. Use ``ipv4`` to allow only IPv4 addresses to invoke your domain name, or use ``dualstack`` to allow both IPv4 and IPv6 addresses to invoke your domain name.
	IpAddressType?: string
	// The Amazon resource name (ARN) for the public certificate issued by ACMlong. This ARN is used to validate custom domain ownership. It's required only if you configure mutual TLS and use either an ACM-imported or a private CA certificate ARN as the regionalCertificateArn.
	OwnershipVerificationCertificateArn?: string
	// The Transport Layer Security (TLS) version of the security policy for this domain name. The valid values are ``TLS_1_0`` and ``TLS_1_2``.
	SecurityPolicy?: string
}

#MutualTlsAuthentication: {
	// An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, ``s3://bucket-name/key-name``. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version. To update the truststore, you must have permissions to access the S3 object.
	TruststoreUri?: string
	// The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket.
	TruststoreVersion?: string
}
