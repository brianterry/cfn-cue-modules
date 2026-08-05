package domainnamev2

#Properties: {
	CertificateArn?: string
	DomainName?: string
	EndpointAccessMode?: string
	EndpointConfiguration?: #EndpointConfiguration
	Policy?: {...}
	// The valid routing modes are [BASE_PATH_MAPPING_ONLY], [ROUTING_RULE_THEN_BASE_PATH_MAPPING] and [ROUTING_RULE_ONLY]. All other inputs are invalid.
	RoutingMode?: "BASE_PATH_MAPPING_ONLY" | "ROUTING_RULE_THEN_BASE_PATH_MAPPING" | "ROUTING_RULE_ONLY"
	SecurityPolicy?: string
	Tags?: [...#Tag]
}

#EndpointConfiguration: {
	IpAddressType?: string
	Types?: [...string]
}

#Tag: {
	Key?: string
	Value?: string
}
