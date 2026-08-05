package container

import "strings"

#Properties: {
	// Describes a container deployment configuration of an Amazon Lightsail container service.
	ContainerServiceDeployment?: #ContainerServiceDeployment
	// A Boolean value to indicate whether the container service is disabled.
	IsDisabled?: bool
	// The power specification for the container service.
	Power: string
	// The public domain names to use with the container service, such as example.com and www.example.com.
	PublicDomainNames?: [...#PublicDomainName]
	// The scale specification for the container service.
	Scale: int & >=1 & <=20
	// The name for the container service.
	ServiceName: string & =~"^[a-z0-9]{1,2}|[a-z0-9][a-z0-9-]+[a-z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Container: {
	// The launch command for the container.
	Command?: [...string]
	// The name of the container.
	ContainerName?: string
	// The environment variables of the container.
	Environment?: [...#EnvironmentVariable]
	// The name of the image used for the container.
	Image?: string
	// The open firewall ports of the container.
	Ports?: [...#PortInfo]
}

#ContainerServiceDeployment: {
	// An object that describes the configuration for the containers of the deployment.
	Containers?: [...#Container]
	// An object that describes the endpoint of the deployment.
	PublicEndpoint?: #PublicEndpoint
}

#EnvironmentVariable: {
	Value?: string
	Variable?: string
}

#HealthCheckConfig: {
	// The number of consecutive health checks successes required before moving the container to the Healthy state. The default value is 2.
	HealthyThreshold?: int
	// The approximate interval, in seconds, between health checks of an individual container. You can specify between 5 and 300 seconds. The default value is 5.
	IntervalSeconds?: int
	// The path on the container on which to perform the health check. The default value is /.
	Path?: string
	// The HTTP codes to use when checking for a successful response from a container. You can specify values between 200 and 499. You can specify multiple values (for example, 200,202) or a range of values (for example, 200-299).
	SuccessCodes?: string
	// The amount of time, in seconds, during which no response means a failed health check. You can specify between 2 and 60 seconds. The default value is 2.
	TimeoutSeconds?: int
	// The number of consecutive health check failures required before moving the container to the Unhealthy state. The default value is 2.
	UnhealthyThreshold?: int
}

#PortInfo: {
	Port?: string
	Protocol?: string
}

#PrivateRegistryAccess: {
	// An object to describe a request to activate or deactivate the role that you can use to grant an Amazon Lightsail container service access to Amazon Elastic Container Registry (Amazon ECR) private repositories.
	EcrImagePullerRole?: {
		IsActive?: bool
		PrincipalArn?: string
	}
}

#PublicDomainName: {
	CertificateName?: string
	// An object that describes the configuration for the containers of the deployment.
	DomainNames?: [...string]
}

#PublicEndpoint: {
	// The name of the container for the endpoint.
	ContainerName?: string
	// The port of the container to which traffic is forwarded to.
	ContainerPort?: int
	// An object that describes the health check configuration of the container.
	HealthCheckConfig?: #HealthCheckConfig
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
