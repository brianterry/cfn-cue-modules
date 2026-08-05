package loadbalancer

import "strings"

#Properties: {
	// The names of the instances attached to the load balancer.
	AttachedInstances?: [...string]
	// The path you provided to perform the load balancer health check. If you didn't specify a health check path, Lightsail uses the root path of your website (e.g., "/").
	HealthCheckPath?: string
	// The instance port where you're creating your load balancer.
	InstancePort: int
	// The IP address type for the load balancer. The possible values are ipv4 for IPv4 only, and dualstack for IPv4 and IPv6. The default value is dualstack.
	IpAddressType?: string
	// The name of your load balancer.
	LoadBalancerName: string & =~"\\w[\\w\\-]*\\w"
	// Configuration option to enable session stickiness.
	SessionStickinessEnabled?: bool
	// Configuration option to adjust session stickiness cookie duration parameter.
	SessionStickinessLBCookieDurationSeconds?: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The name of the TLS policy to apply to the load balancer.
	TlsPolicyName?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
