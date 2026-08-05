package resolverendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the resolver endpoint, such as arn:aws:route53resolver:us-east-1:123456789012:resolver-endpoint/resolver-endpoint-a1bzhi.
	Arn: string
	// The ID of the VPC that you want to create the resolver endpoint in.
	HostVPCId: string
	// The number of IP addresses that the resolver endpoint can use for DNS queries.
	IpAddressCount: string
	// The ID of the resolver endpoint.
	ResolverEndpointId: string
}
