package service

import "strings"

#Properties: {
	// Autoscaling configuration ARN
	AutoScalingConfigurationArn?: string & =~"arn:aws(-[\\w]+)*:[a-z0-9-\\\\.]{0,63}:[a-z0-9-\\\\.]{0,63}:[0-9]{12}:(\\w|\\/|-){1,1011}" & strings.MinRunes(1) & strings.MaxRunes(1011)
	EncryptionConfiguration?: #EncryptionConfiguration
	HealthCheckConfiguration?: #HealthCheckConfiguration
	InstanceConfiguration?: #InstanceConfiguration
	NetworkConfiguration?: #NetworkConfiguration
	ObservabilityConfiguration?: #ServiceObservabilityConfiguration
	// The AppRunner Service Name.
	ServiceName?: string & =~"[A-Za-z0-9][A-Za-z0-9-_]{3,39}" & strings.MinRunes(4) & strings.MaxRunes(40)
	SourceConfiguration: #SourceConfiguration
	Tags?: [...#Tag]
}

#AuthenticationConfiguration: {
	// Access Role Arn
	AccessRoleArn?: #RoleArn
	// Connection Arn
	ConnectionArn?: string & =~"arn:aws(-[\\w]+)*:[a-z0-9-\\\\.]{0,63}:[a-z0-9-\\\\.]{0,63}:[0-9]{12}:(\\w|\\/|-){1,1011}" & strings.MinRunes(1) & strings.MaxRunes(1011)
}

#CodeConfiguration: {
	CodeConfigurationValues?: #CodeConfigurationValues
	// Configuration Source
	ConfigurationSource: "REPOSITORY" | "API"
}

#CodeConfigurationValues: {
	// Build Command
	BuildCommand?: string
	// Port
	Port?: string
	// Runtime
	Runtime: "PYTHON_3" | "NODEJS_12" | "NODEJS_14" | "CORRETTO_8" | "CORRETTO_11" | "NODEJS_16" | "GO_1" | "DOTNET_6" | "PHP_81" | "RUBY_31" | "PYTHON_311" | "NODEJS_18" | "NODEJS_22"
	// The secrets and parameters that get referenced by your service as environment variables
	RuntimeEnvironmentSecrets?: [...#KeyValuePair]
	RuntimeEnvironmentVariables?: [...#KeyValuePair]
	// Start Command
	StartCommand?: string
}

#CodeRepository: {
	CodeConfiguration?: #CodeConfiguration
	// Repository Url
	RepositoryUrl: string
	SourceCodeVersion: #SourceCodeVersion
	// Source Directory
	SourceDirectory?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#EgressConfiguration: {
	// Network egress type.
	EgressType: "DEFAULT" | "VPC"
	// The Amazon Resource Name (ARN) of the App Runner VpcConnector.
	VpcConnectorArn?: string & =~"arn:aws(-[\\w]+)*:[a-z0-9-\\\\.]{0,63}:[a-z0-9-\\\\.]{0,63}:[0-9]{12}:(\\w|\\/|-){1,1011}" & strings.MinRunes(44) & strings.MaxRunes(1011)
}

#EncryptionConfiguration: {
	// The KMS Key
	KmsKey: string & =~"arn:aws(-[\\w]+)*:kms:[a-z\\-]+-[0-9]{1}:[0-9]{12}:key\\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#HealthCheckConfiguration: {
	// Health check Healthy Threshold
	HealthyThreshold?: int & >=1 & <=20
	// Health check Interval
	Interval?: int
	// Health check Path
	Path?: string
	// Health Check Protocol
	Protocol?: "TCP" | "HTTP"
	// Health check Timeout
	Timeout?: int & >=1 & <=20
	// Health check Unhealthy Threshold
	UnhealthyThreshold?: int & >=1 & <=20
}

#ImageConfiguration: {
	// Port
	Port?: string
	// The secrets and parameters that get referenced by your service as environment variables
	RuntimeEnvironmentSecrets?: [...#KeyValuePair]
	RuntimeEnvironmentVariables?: [...#KeyValuePair]
	// Start Command
	StartCommand?: string
}

#ImageRepository: {
	ImageConfiguration?: #ImageConfiguration
	// Image Identifier
	ImageIdentifier: string & =~"([0-9]{12}.dkr.ecr.[a-z\\-]+-[0-9]{1}.amazonaws.com\\/.*)|(^public\\.ecr\\.aws\\/.+\\/.+)" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// Image Repository Type
	ImageRepositoryType: "ECR" | "ECR_PUBLIC"
}

#IngressConfiguration: {
	// It's set to true if the Apprunner service is publicly accessible. It's set to false otherwise.
	IsPubliclyAccessible: bool
}

#InstanceConfiguration: {
	// CPU
	Cpu?: string & =~"256|512|1024|2048|4096|(0.25|0.5|1|2|4) vCPU" & strings.MinRunes(3) & strings.MaxRunes(9)
	// Instance Role Arn
	InstanceRoleArn?: #RoleArn
	// Memory
	Memory?: string & =~"512|1024|2048|3072|4096|6144|8192|10240|12288|(0.5|1|2|3|4|6|8|10|12) GB" & strings.MinRunes(3) & strings.MaxRunes(6)
}

#KeyValuePair: {
	Name?: string
	Value?: string
}

#NetworkConfiguration: {
	EgressConfiguration?: #EgressConfiguration
	IngressConfiguration?: #IngressConfiguration
	// App Runner service endpoint IP address type
	IpAddressType?: "IPV4" | "DUAL_STACK"
}

#RoleArn: string & =~"arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):iam::[0-9]{12}:role/[\\w+=,.@-]{1,64}" & strings.MinRunes(29) & strings.MaxRunes(1024)

#ServiceObservabilityConfiguration: {
	// The Amazon Resource Name (ARN) of the App Runner ObservabilityConfiguration.
	ObservabilityConfigurationArn?: string & =~"arn:aws(-[\\w]+)*:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[0-9]{12}:(\\w|/|-){1,1011}" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// Observability enabled
	ObservabilityEnabled: bool
}

#SourceCodeVersion: {
	// Source Code Version Type
	Type: "BRANCH"
	// Source Code Version Value
	Value: string
}

#SourceConfiguration: {
	AuthenticationConfiguration?: #AuthenticationConfiguration
	// Auto Deployment enabled
	AutoDeploymentsEnabled?: bool
	CodeRepository?: #CodeRepository
	ImageRepository?: #ImageRepository
}

#Tag: {
	Key?: string
	Value?: string
}
