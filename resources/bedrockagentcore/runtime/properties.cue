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

#AgentManagedRuntimeType: "PYTHON_3_10" | "PYTHON_3_11" | "PYTHON_3_12" | "PYTHON_3_13" | "PYTHON_3_14" | "NODE_22"

#AgentRuntimeArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:runtime/[a-zA-Z][a-zA-Z0-9_]{0,99}-[a-zA-Z0-9]{10}$" & strings.MaxRunes(2048)

#AgentRuntimeArtifact: {
	CodeConfiguration?: #CodeConfiguration
	ContainerConfiguration?: #ContainerConfiguration
}

#AgentRuntimeId: string & =~"[a-zA-Z][a-zA-Z0-9_]{0,99}-[a-zA-Z0-9]{10}"

#AgentRuntimeName: string & =~"[a-zA-Z][a-zA-Z0-9_]{0,47}"

#AgentRuntimeVersion: string & =~"([1-9][0-9]{0,4})" & strings.MinRunes(1) & strings.MaxRunes(5)

#AgentStatus: "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "READY" | "DELETING"

#AllowedAudience: string

#AllowedAudienceList: [...#AllowedAudience]

#AllowedClient: string

#AllowedClientsList: [...#AllowedClient]

#AllowedScope: string

#AllowedScopesList: [...#AllowedScope]

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

#ClaimMatchOperator: "EQUALS" | "CONTAINS" | "CONTAINS_ANY"

#ClaimMatchValueType: {
	MatchValueString?: #MatchValueString
	MatchValueStringList?: #MatchValueStringList
}

#ClientToken: string & =~"^[a-zA-Z0-9-_]+$" & strings.MinRunes(33) & strings.MaxRunes(256)

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

#CreatedAt: string

#CustomClaimValidationType: {
	AuthorizingClaimMatchValue: #AuthorizingClaimMatchValueType
	InboundTokenClaimName: #InboundTokenClaimName
	InboundTokenClaimValueType: #InboundTokenClaimValueType
}

#CustomClaimsList: [...#CustomClaimValidationType]

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

#Description: string & strings.MinRunes(1) & strings.MaxRunes(1200)

#DiscoveryUrl: string & =~"^.+/\\.well-known/openid-configuration$"

#EfsAccessPointArn: string & =~"^arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:access-point/fsap-[0-9a-f]{8,40}$" & strings.MaxRunes(128)

#EfsAccessPointConfiguration: {
	AccessPointArn: #EfsAccessPointArn
	MountPath: #MountPath
}

#EntryPoints: [...string]

#EnvironmentVariableKey: string & =~"^[a-zA-Z_][a-zA-Z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(128)

#EnvironmentVariableValue: string & strings.MaxRunes(2048)

#EnvironmentVariablesMap: {...}

#FilesystemConfiguration: {
	EfsAccessPoint?: #EfsAccessPointConfiguration
	S3FilesAccessPoint?: #S3FilesAccessPointConfiguration
	SessionStorage?: #SessionStorageConfiguration
}

#FilesystemConfigurations: [...#FilesystemConfiguration]

#HeaderName: string & =~"^[A-Za-z][A-Za-z0-9_-]{0,255}$" & strings.MinRunes(1) & strings.MaxRunes(256)

#HostingEnvironment: {
	// The ARN of the bedrock-agentcore hosting environment
	Arn: string & strings.MinRunes(20) & strings.MaxRunes(1011)
}

#HostingEnvironmentsList: [...#HostingEnvironment]

#InboundTokenClaimName: string & =~"[A-Za-z0-9_.-:]+"

#InboundTokenClaimValueType: "STRING" | "STRING_ARRAY"

#LastUpdatedAt: string

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

#MatchValueString: string & =~"[A-Za-z0-9_.-]+"

#MatchValueStringList: [...#MatchValueString]

#MountPath: string & =~"^/mnt/[a-zA-Z0-9._-]+/?$" & strings.MinRunes(6) & strings.MaxRunes(200)

#NetworkConfiguration: {
	NetworkMode: #NetworkMode
	NetworkModeConfig?: #VpcConfig
}

#NetworkMode: "PUBLIC" | "VPC"

#PrivateEndpoint: {
	SelfManagedLatticeResource: #SelfManagedLatticeResource
} | {
	ManagedVpcResource: #ManagedVpcResource
}

#PrivateEndpointOverride: {
	// The domain to override
	Domain: string & strings.MinRunes(1) & strings.MaxRunes(253)
	PrivateEndpoint: #PrivateEndpoint
}

#PrivateEndpointOverridesList: [...#PrivateEndpointOverride]

#ProtocolConfiguration: "MCP" | "HTTP" | "A2A" | "AGUI"

#RequestHeaderAllowlist: [...#HeaderName]

#RequestHeaderConfiguration: {
	RequestHeaderAllowlist?: #RequestHeaderAllowlist
}

#RoleArn: string & =~"arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/.+"

#RuntimeContainerUri: string & =~"^\\d{12}\\.dkr\\.ecr\\.([a-z0-9-]+)\\.amazonaws\\.com/((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*)([:@]\\S+)$" & strings.MinRunes(1) & strings.MaxRunes(1024)

#S3FilesAccessPointArn: string & =~"^arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}/access-point/fsap-[0-9a-f]{17,40}$" & strings.MaxRunes(256)

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

#SecurityGroupId: string & =~"^sg-[0-9a-zA-Z]{8,17}$"

#SecurityGroups: [...#SecurityGroupId]

#SelfManagedLatticeResource: {
	// The identifier of the VPC Lattice resource configuration
	ResourceConfigurationIdentifier: string
}

#SessionStorageConfiguration: {
	MountPath: #MountPath
}

#SubnetId: string & =~"^subnet-[0-9a-zA-Z]{8,17}$"

#Subnets: [...#SubnetId]

#TagsMap: {...}

#VpcConfig: {
	SecurityGroups: #SecurityGroups
	Subnets: #Subnets
}

#WorkloadIdentitiesList: [...string & =~"^[A-Za-z0-9_.-]+$" & strings.MinRunes(3) & strings.MaxRunes(255)]

#WorkloadIdentityArn: string & strings.MinRunes(1) & strings.MaxRunes(1024)

#WorkloadIdentityDetails: {
	WorkloadIdentityArn: #WorkloadIdentityArn
}
