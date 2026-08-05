package runtime

import "strings"

#Properties: {
	// The artifact of the agent
	AgentRuntimeArtifact: #AgentRuntimeArtifact
	// Name for a resource
	AgentRuntimeName: #AgentRuntimeName
	// Authorizer configuration for the agent runtime
	AuthorizerConfiguration?: #AuthorizerConfiguration
	// Description of the resource
	Description?: #Description
	// Environment variables for the agent runtime
	EnvironmentVariables?: #EnvironmentVariablesMap
	// Filesystem configurations for the agent runtime
	FilesystemConfigurations?: #FilesystemConfigurations
	// Lifecycle configuration for managing runtime sessions
	LifecycleConfiguration?: #LifecycleConfiguration
	// Network access configuration for the Agent
	NetworkConfiguration: #NetworkConfiguration
	// Protocol configuration for the agent runtime
	ProtocolConfiguration?: #ProtocolConfiguration
	// Configuration for HTTP request headers
	RequestHeaderConfiguration?: #RequestHeaderConfiguration
	// Amazon Resource Name (ARN) of an IAM role
	RoleArn: #RoleArn
	Tags?: #TagsMap
}

#AgentRuntimeArtifact: {
	CodeConfiguration?: #CodeConfiguration
	ContainerConfiguration?: #ContainerConfiguration
}

#AllowedWorkloadConfiguration: {
	HostingEnvironments?: #HostingEnvironmentsList
	WorkloadIdentities?: #WorkloadIdentitiesList
}

#AuthorizerConfiguration: {
	CustomJWTAuthorizer?: #CustomJWTAuthorizerConfiguration
}

#AuthorizingClaimMatchValueType: {
	ClaimMatchOperator: #ClaimMatchOperator
	ClaimMatchValue: #ClaimMatchValueType
}

#ClaimMatchValueType: {
	MatchValueString?: #MatchValueString
	MatchValueStringList?: #MatchValueStringList
}

#Code: {
	S3?: #S3Location
}

#CodeConfiguration: {
	Code: #Code
	EntryPoint: #EntryPoints
	Runtime: #AgentManagedRuntimeType
}

#ContainerConfiguration: {
	ContainerUri: #RuntimeContainerUri
}

#CustomClaimValidationType: {
	AuthorizingClaimMatchValue: #AuthorizingClaimMatchValueType
	InboundTokenClaimName: #InboundTokenClaimName
	InboundTokenClaimValueType: #InboundTokenClaimValueType
}

#CustomJWTAuthorizerConfiguration: {
	AllowedAudience?: #AllowedAudienceList
	AllowedClients?: #AllowedClientsList
	AllowedScopes?: #AllowedScopesList
	AllowedWorkloadConfiguration?: #AllowedWorkloadConfiguration
	CustomClaims?: #CustomClaimsList
	DiscoveryUrl: #DiscoveryUrl
	PrivateEndpoint?: #PrivateEndpoint
	PrivateEndpointOverrides?: #PrivateEndpointOverridesList
}

#EfsAccessPointConfiguration: {
	AccessPointArn: #EfsAccessPointArn
	MountPath: #MountPath
}

#FilesystemConfiguration: {
	EfsAccessPoint?: #EfsAccessPointConfiguration
	S3FilesAccessPoint?: #S3FilesAccessPointConfiguration
	SessionStorage?: #SessionStorageConfiguration
}

#HostingEnvironment: {
	// The ARN of the bedrock-agentcore hosting environment
	Arn: string & strings.MinRunes(20) & strings.MaxRunes(1011)
}

#LifecycleConfiguration: {
	// Timeout in seconds for idle runtime sessions
	IdleRuntimeSessionTimeout?: int & >=60 & <=28800
	// Maximum lifetime in seconds for runtime sessions
	MaxLifetime?: int & >=60 & <=28800
}

#ManagedVpcResource: {
	// The IP address type for the endpoint
	EndpointIpAddressType: "IPV4" | "IPV6"
	// An intermediate domain to use as the resource configuration endpoint instead of the actual target domain
	RoutingDomain?: string
	// The security group IDs
	SecurityGroupIds?: [...string]
	// The subnet IDs
	SubnetIds: [...string]
	// Tags to apply to the managed VPC Lattice resource gateway
	Tags?: {...}
	// The VPC identifier
	VpcIdentifier: string
}

#NetworkConfiguration: {
	NetworkMode: #NetworkMode
	NetworkModeConfig?: #VpcConfig
}

#PrivateEndpointOverride: {
	// The domain to override
	Domain: string & strings.MinRunes(1) & strings.MaxRunes(253)
	PrivateEndpoint: #PrivateEndpoint
}

#RequestHeaderConfiguration: {
	RequestHeaderAllowlist?: #RequestHeaderAllowlist
}

#S3FilesAccessPointConfiguration: {
	AccessPointArn: #S3FilesAccessPointArn
	MountPath: #MountPath
}

#S3Location: {
	// S3 bucket name
	Bucket: string & =~"^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$"
	// S3 object key prefix
	Prefix: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// S3 object version ID
	VersionId?: string & strings.MinRunes(3) & strings.MaxRunes(1024)
}

#SelfManagedLatticeResource: {
	// The identifier of the VPC Lattice resource configuration
	ResourceConfigurationIdentifier: string
}

#SessionStorageConfiguration: {
	MountPath: #MountPath
}

#VpcConfig: {
	SecurityGroups: #SecurityGroups
	Subnets: #Subnets
}

#WorkloadIdentityDetails: {
	WorkloadIdentityArn: #WorkloadIdentityArn
}
