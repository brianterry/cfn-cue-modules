package instanceconnectendpoint

#Properties: {
	// The client token of the instance connect endpoint.
	ClientToken?: string
	// Indicates whether your client's IP address is preserved as the source when you connect to a resource.
	PreserveClientIp?: bool
	// The security groups associated with the endpoint.
	SecurityGroupIds?: [...#SecurityGroupId]
	// The ID of the subnet in which the EC2 Instance Connect Endpoint was created.
	SubnetId: string
	// The tags assigned to the EC2 Instance Connect Endpoint.
	Tags?: [...#Tag]
}

#InstanceConnectEndpointDnsNames: {
	// The DNS name of the EC2 Instance Connect Endpoint.
	DnsName?: string
	// The Federal Information Processing Standards (FIPS) compliant DNS name of the EC2 Instance Connect Endpoint.
	FipsDnsName?: string
}

#InstanceConnectEndpointPublicDnsNames: {
	// The dualstack DNS name of the EC2 Instance Connect Endpoint. A dualstack DNS name supports connections from both IPv4 and IPv6 clients.
	Dualstack?: #InstanceConnectEndpointDnsNames
	// The IPv4-only DNS name of the EC2 Instance Connect Endpoint.
	Ipv4?: #InstanceConnectEndpointDnsNames
}

#NetworkInterfaceId: string

#SecurityGroupId: string

#Tag: {
	Key: string
	Value: string
}
