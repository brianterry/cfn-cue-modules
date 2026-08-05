package resolverrule

import "strings"

#Properties: {
	// The name server domain for queries to be delegated to if a query matches the delegation record.
	DelegationRecord?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// DNS queries for this domain name are forwarded to the IP addresses that are specified in TargetIps
	DomainName?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name for the Resolver rule
	Name?: string & strings.MinRunes(0) & strings.MaxRunes(64)
	// The ID of the endpoint that the rule is associated with.
	ResolverEndpointId?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// When you want to forward DNS queries for specified domain name to resolvers on your network, specify FORWARD. When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for a subdomain of that domain, specify SYSTEM.
	RuleType: "FORWARD" | "SYSTEM" | "RECURSIVE" | "DELEGATE"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// An array that contains the IP addresses and ports that an outbound endpoint forwards DNS queries to. Typically, these are the IP addresses of DNS resolvers on your network. Specify IPv4 addresses. IPv6 is not supported.
	TargetIps?: [...#TargetAddress]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TargetAddress: {
	// One IP address that you want to forward DNS queries to. You can specify only IPv4 addresses. 
	Ip?: string
	// One IPv6 address that you want to forward DNS queries to. You can specify only IPv6 addresses. 
	Ipv6?: string
	// The port at Ip that you want to forward DNS queries to. 
	Port?: string & strings.MinRunes(0) & strings.MaxRunes(65535)
	// The protocol that you want to use to forward DNS queries. 
	Protocol?: "Do53" | "DoH"
	// The SNI of the target name servers for DoH/DoH-FIPS outbound endpoints
	ServerNameIndication?: string & strings.MinRunes(0) & strings.MaxRunes(255)
}
