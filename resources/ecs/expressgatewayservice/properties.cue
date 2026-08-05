package expressgatewayservice

#Properties: {
	Cluster?: string
	Cpu?: string
	ExecutionRoleArn?: string
	HealthCheckPath?: string
	InfrastructureRoleArn: string
	Memory?: string
	NetworkConfiguration?: #ExpressGatewayServiceNetworkConfiguration
	PrimaryContainer?: #ExpressGatewayContainer
	ScalingTarget?: #ExpressGatewayScalingTarget
	ServiceName?: string
	Tags?: [...#Tag]
	TaskDefinitionArn?: string
	TaskRoleArn?: string
}

#AutoScalingArns: {
	ApplicationAutoScalingPolicies?: [...string]
	ScalableTarget?: string
}

#ECSManagedResourceArns: {
	AutoScaling?: #AutoScalingArns
	IngressPath?: #IngressPathArns
	LogGroups?: [...string]
	MetricAlarms?: [...string]
	ServiceSecurityGroups?: [...string]
}

#ExpressGatewayContainer: {
	AwsLogsConfiguration?: #ExpressGatewayServiceAwsLogsConfiguration
	Command?: [...string]
	ContainerPort?: int
	Environment?: [...#KeyValuePair]
	Image: string
	RepositoryCredentials?: #ExpressGatewayRepositoryCredentials
	Secrets?: [...#Secret]
}

#ExpressGatewayRepositoryCredentials: {
	CredentialsParameter: string
}

#ExpressGatewayScalingTarget: {
	AutoScalingMetric?: #ExpressGatewayServiceScalingMetric
	AutoScalingTargetValue?: int
	MaxTaskCount?: int
	MinTaskCount?: int
}

#ExpressGatewayServiceAwsLogsConfiguration: {
	LogGroup: string
	LogStreamPrefix: string
}

#ExpressGatewayServiceConfiguration: {
	Cpu?: string
	CreatedAt?: string
	ExecutionRoleArn?: string
	HealthCheckPath?: string
	IngressPaths?: [...#IngressPathSummary]
	Memory?: string
	NetworkConfiguration?: #ExpressGatewayServiceNetworkConfiguration
	PrimaryContainer?: #ExpressGatewayContainer
	ScalingTarget?: #ExpressGatewayScalingTarget
	ServiceRevisionArn?: string
	TaskDefinitionArn?: string
	TaskRoleArn?: string
}

#ExpressGatewayServiceNetworkConfiguration: {
	SecurityGroups?: [...string]
	Subnets?: [...string]
}

#ExpressGatewayServiceStatus: {
	StatusCode?: #ExpressGatewayServiceStatusCode
}

#IngressPathArns: {
	CertificateArn?: string
	ListenerArn?: string
	ListenerRuleArn?: string
	LoadBalancerArn?: string
	LoadBalancerSecurityGroups?: [...string]
	TargetGroupArns?: [...string]
}

#IngressPathSummary: {
	AccessType?: #AccessType
	Endpoint?: string
}

#KeyValuePair: {
	Name: string
	Value: string
}

#Secret: {
	Name: string
	ValueFrom: string
}

#Tag: {
	Key: string
	Value: string
}
