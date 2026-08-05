package loadbalancer

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The name of the Route 53 hosted zone that is associated with the load balancer. Internal-facing load balancers.
	CanonicalHostedZoneName: string
	// The ID of the Route 53 hosted zone name that is associated with the load balancer.
	CanonicalHostedZoneNameID: string
	SourceSecurityGroup: #SourceSecurityGroup
	// The DNS name for the load balancer
	DNSName: string
}
