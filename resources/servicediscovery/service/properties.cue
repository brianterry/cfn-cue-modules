package service

#Properties: {
	// A description for the service.
	Description?: string
	// DNS-related configurations for the service.
	DnsConfig?: #DnsConfig
	// Settings for health checks. Used when routing is DNS-based.
	HealthCheckConfig?: #HealthCheckConfig
	// Settings for custom health checks.
	HealthCheckCustomConfig?: #HealthCheckCustomConfig
	// The name of the service.
	Name?: string
	// The ID of the namespace in which the service is created.
	NamespaceId?: string
	// A string map that contains attributes and values for the service. You can specify a maximum of 30 key-value pairs.
	ServiceAttributes?: {...}
	// An array of key-value pairs to associate with the service.
	Tags?: [...#Tag]
	// The type of service. Supported values are HTTP or DNS.
	Type?: string
}

#DnsConfig: {
	// A list of DNS records associated with the service.
	DnsRecords: [...#DnsRecord]
	// The ID of the namespace for the DNS configuration.
	NamespaceId?: string
	// The routing policy to use for DNS queries.
	RoutingPolicy?: string
}

#DnsRecord: {
	// The time-to-live (TTL) for the DNS record.
	TTL: number
	// The DNS record type (e.g., A, AAAA, SRV).
	Type: string
}

#HealthCheckConfig: {
	// The number of consecutive health check failures that must occur before declaring the service unhealthy.
	FailureThreshold?: number
	// The path to ping on the service for health checks.
	ResourcePath?: string
	// The type of health check (e.g., HTTP, HTTPS, TCP).
	Type: string
}

#HealthCheckCustomConfig: {
	// The number of consecutive health check failures required before the service is considered unhealthy.
	FailureThreshold?: number
}

#Tag: {
	// The key name of the tag.
	Key: string
	// The value of the tag.
	Value: string
}
