package verifiedaccessendpoint

import "strings"

#Properties: {
	// The DNS name for users to reach your application.
	ApplicationDomain?: string
	// The type of attachment used to provide connectivity between the AWS Verified Access endpoint and the application.
	AttachmentType: string
	// The options for cidr type endpoint.
	CidrOptions?: #CidrOptions
	// A description for the AWS Verified Access endpoint.
	Description?: string
	// The ARN of a public TLS/SSL certificate imported into or created with ACM.
	DomainCertificateArn?: string
	// A custom identifier that gets prepended to a DNS name that is generated for the endpoint.
	EndpointDomainPrefix?: string
	// The type of AWS Verified Access endpoint. Incoming application requests will be sent to an IP address, load balancer or a network interface depending on the endpoint type specified.The type of AWS Verified Access endpoint. Incoming application requests will be sent to an IP address, load balancer or a network interface depending on the endpoint type specified.
	EndpointType: string
	// The load balancer details if creating the AWS Verified Access endpoint as load-balancer type.
	LoadBalancerOptions?: #LoadBalancerOptions
	// The options for network-interface type endpoint.
	NetworkInterfaceOptions?: #NetworkInterfaceOptions
	// The AWS Verified Access policy document.
	PolicyDocument?: string
	// The status of the Verified Access policy.
	PolicyEnabled?: bool
	// The options for rds type endpoint.
	RdsOptions?: #RdsOptions
	// The IDs of the security groups for the endpoint.
	SecurityGroupIds?: [...#SecurityGroupId]
	// The configuration options for customer provided KMS encryption.
	SseSpecification?: #SseSpecification
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The ID of the AWS Verified Access group.
	VerifiedAccessGroupId: string
}

#CidrOptions: {
	// The IP address range, in CIDR notation.
	Cidr?: string
	// The list of port range.
	PortRanges?: [...#PortRange]
	// The IP protocol.
	Protocol?: string
	// The IDs of the subnets.
	SubnetIds?: [...#SubnetId]
}

#LoadBalancerOptions: {
	// The ARN of the load balancer.
	LoadBalancerArn?: string
	// The IP port number.
	Port?: int & >=1 & <=65535
	// The list of port range.
	PortRanges?: [...#PortRange]
	// The IP protocol.
	Protocol?: string
	// The IDs of the subnets.
	SubnetIds?: [...#SubnetId]
}

#NetworkInterfaceOptions: {
	// The ID of the network interface.
	NetworkInterfaceId?: string
	// The IP port number.
	Port?: int & >=1 & <=65535
	// The list of port ranges.
	PortRanges?: [...#PortRange]
	// The IP protocol.
	Protocol?: string
}

#PortRange: {
	// The first port in the range.
	FromPort?: int & >=1 & <=65535
	// The last port in the range.
	ToPort?: int & >=1 & <=65535
}

#RdsOptions: {
	// The IP port number.
	Port?: int & >=1 & <=65535
	// The IP protocol.
	Protocol?: string
	// The ARN of the RDS DB cluster.
	RdsDbClusterArn?: string
	// The ARN of the RDS DB instance.
	RdsDbInstanceArn?: string
	// The ARN of the RDS DB proxy.
	RdsDbProxyArn?: string
	// The RDS endpoint.
	RdsEndpoint?: string
	// The IDs of the subnets.
	SubnetIds?: [...#SubnetId]
}

#SseSpecification: {
	// Whether to encrypt the policy with the provided key or disable encryption
	CustomerManagedKeyEnabled?: bool
	// KMS Key Arn used to encrypt the group policy
	KmsKeyArn?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
