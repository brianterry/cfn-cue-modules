package resourceset

#Properties: {
	// The name of the resource set to create.
	ResourceSetName?: string
	// The resource type of the resources in the resource set. Enter one of the following values for resource type: 

AWS: :AutoScaling: :AutoScalingGroup, AWS: :CloudWatch: :Alarm, AWS: :EC2: :CustomerGateway, AWS: :DynamoDB: :Table, AWS: :EC2: :Volume, AWS: :ElasticLoadBalancing: :LoadBalancer, AWS: :ElasticLoadBalancingV2: :LoadBalancer, AWS: :MSK: :Cluster, AWS: :RDS: :DBCluster, AWS: :Route53: :HealthCheck, AWS: :SQS: :Queue, AWS: :SNS: :Topic, AWS: :SNS: :Subscription, AWS: :EC2: :VPC, AWS: :EC2: :VPNConnection, AWS: :EC2: :VPNGateway, AWS::Route53RecoveryReadiness::DNSTargetResource
	ResourceSetType: string
	// A list of resource objects in the resource set.
	Resources: [...#Resource]
	// A tag to associate with the parameters for a resource set.
	Tags?: [...#Tag]
}

#DNSTargetResource: {
	// The domain name that acts as an ingress point to a portion of the customer application.
	DomainName?: string
	// The hosted zone Amazon Resource Name (ARN) that contains the DNS record with the provided name of the target resource.
	HostedZoneArn?: string
	// The Route 53 record set ID that will uniquely identify a DNS record, given a name and a type.
	RecordSetId?: string
	// The type of DNS record of the target resource.
	RecordType?: string
	TargetResource?: #TargetResource
}

#NLBResource: {
	// A Network Load Balancer resource Amazon Resource Name (ARN).
	Arn?: string
}

#R53ResourceRecord: {
	// The DNS target domain name.
	DomainName?: string
	// The Resource Record set id.
	RecordSetId?: string
}

#Resource: {
	// The component identifier of the resource, generated when DNS target resource is used.
	ComponentId?: string
	DnsTargetResource?: #DNSTargetResource
	// A list of recovery group Amazon Resource Names (ARNs) and cell ARNs that this resource is contained within.
	ReadinessScopes?: [...string]
	// The Amazon Resource Name (ARN) of the AWS resource.
	ResourceArn?: string
}

#Tag: {
	Key: string
	Value: string
}

#TargetResource: {
	NLBResource?: #NLBResource
	R53Resource?: #R53ResourceRecord
}
