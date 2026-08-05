package domainname

#Properties: {
	CertificateArn?: string
	DomainName?: string
	EndpointAccessMode?: string
	// The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name.
	EndpointConfiguration?: #EndpointConfiguration
	MutualTlsAuthentication?: #MutualTlsAuthentication
	// The ARN of the public certificate issued by ACM to validate ownership of your custom domain. Only required when configuring mutual TLS and using an ACM imported or private CA certificate ARN as the RegionalCertificateArn.
	OwnershipVerificationCertificateArn?: string
	RegionalCertificateArn?: string
	RoutingMode?: "BASE_PATH_MAPPING_ONLY" | "ROUTING_RULE_THEN_BASE_PATH_MAPPING" | "ROUTING_RULE_ONLY"
	SecurityPolicy?: string
	Tags?: [...#Tag]
}

#EndpointConfiguration: {
	IpAddressType?: string
	Types?: [...string]
}

#MutualTlsAuthentication: {
	TruststoreUri?: string
	TruststoreVersion?: string
}

#Tag: {
	// A string you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.
	Key?: string
	// The value for the specified tag key.
	Value?: string
}
