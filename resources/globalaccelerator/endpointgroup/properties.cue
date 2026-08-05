package endpointgroup

#Properties: {
	// The list of endpoint objects.
	EndpointConfigurations?: [...#EndpointConfiguration]
	// The name of the AWS Region where the endpoint group is located
	EndpointGroupRegion: string
	// The time in seconds between each health check for an endpoint. Must be a value of 10 or 30
	HealthCheckIntervalSeconds?: int
	HealthCheckPath?: string
	// The port that AWS Global Accelerator uses to check the health of endpoints in this endpoint group.
	HealthCheckPort?: int & >=-1 & <=65535
	// The protocol that AWS Global Accelerator uses to check the health of endpoints in this endpoint group.
	HealthCheckProtocol?: "TCP" | "HTTP" | "HTTPS"
	// The Amazon Resource Name (ARN) of the listener
	ListenerArn: string
	PortOverrides?: [...#PortOverride]
	// The number of consecutive health checks required to set the state of the endpoint to unhealthy.
	ThresholdCount?: int
	// The percentage of traffic to sent to an AWS Region
	TrafficDialPercentage?: number & >=0 & <=100
}

#EndpointConfiguration: {
	// Attachment ARN that provides access control to the cross account endpoint. Not required for resources hosted in the same account as the endpoint group.
	AttachmentArn?: string
	// true if client ip should be preserved
	ClientIPPreservationEnabled?: bool
	// Id of the endpoint. For Network/Application Load Balancer this value is the ARN.  For EIP, this value is the allocation ID.  For EC2 instances, this is the EC2 instance ID
	EndpointId: string
	// The weight for the endpoint.
	Weight?: int & >=0 & <=255
}

#Port: int & >=0 & <=65535

#PortOverride: {
	EndpointPort: #Port
	ListenerPort: #Port
}
