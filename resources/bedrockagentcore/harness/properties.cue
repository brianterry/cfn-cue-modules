package harness

import "strings"

#Properties: {
	// The tools that the agent is allowed to use.
	AllowedTools?: [...string & =~"^(\\*|@?[^/]+(/[^/]+)?)$" & strings.MinRunes(1) & strings.MaxRunes(64)]
	// The inbound authorization configuration for authenticating incoming requests.
	AuthorizerConfiguration?: #AuthorizerConfiguration
	// The environment artifact for the harness, such as a custom container image.
	EnvironmentArtifact?: #HarnessEnvironmentArtifact
	// Environment variables to set in the harness runtime environment.
	EnvironmentVariables?: {...}
	// The ARN of the IAM role that the harness assumes when running.
	ExecutionRoleArn: string & =~"^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The name of the harness.
	HarnessName: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,39}$"
	// The maximum number of iterations the agent loop can execute per invocation.
	MaxIterations?: int
	// The maximum number of tokens the agent can generate per iteration.
	MaxTokens?: int
	// The model configuration for the harness.
	Model: #HarnessModelConfiguration
	// The skills available to the agent.
	Skills?: [...#HarnessSkill]
	// The system prompt that defines the agent's behavior.
	SystemPrompt?: [...#HarnessSystemContentBlock]
	// Tags to apply to the harness resource.
	Tags?: [...#Tag]
	// The maximum duration in seconds for the agent loop execution per invocation.
	TimeoutSeconds?: int
	// The tools available to the agent.
	Tools?: [...#HarnessTool]
	// The truncation configuration for managing conversation context.
	Truncation?: #HarnessTruncationConfiguration
}

#AuthorizerConfiguration: {
	CustomJWTAuthorizer?: #CustomJWTAuthorizerConfiguration
}

#AuthorizingClaimMatchValueType: {
	ClaimMatchOperator: "EQUALS" | "CONTAINS" | "CONTAINS_ANY"
	ClaimMatchValue: #ClaimMatchValueType
}

#ClaimMatchValueType: {
	MatchValueString?: string & =~"^[A-Za-z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	MatchValueStringList?: [...string & =~"^[A-Za-z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)]
}

#ContainerConfiguration: {
	// The ECR URI of the container.
	ContainerUri: string & =~"^(([0-9]{12})\\.dkr\\.ecr\\.([a-z0-9-]+)\\.amazonaws\\.com(\\.cn)?|public\\.ecr\\.aws)/((?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*)(?::([^:@]{1,300}))?(?:@(.+))?$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#CustomClaimValidationType: {
	AuthorizingClaimMatchValue: #AuthorizingClaimMatchValueType
	InboundTokenClaimName: string & =~"^[A-Za-z0-9_.-:]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	InboundTokenClaimValueType: "STRING" | "STRING_ARRAY"
}

#CustomJWTAuthorizerConfiguration: {
	AllowedAudience?: [...string]
	AllowedClients?: [...string]
	AllowedScopes?: [...string & =~"^[\\x21\\x23-\\x5B\\x5D-\\x7E]+$" & strings.MinRunes(1) & strings.MaxRunes(255)]
	CustomClaims?: [...#CustomClaimValidationType]
	DiscoveryUrl: string & =~"^.+/\\.well-known/openid-configuration$"
	PrivateEndpoint?: #PrivateEndpoint
	PrivateEndpointOverrides?: [...#PrivateEndpointOverride]
}

#EfsAccessPointConfiguration: {
	AccessPointArn: string & =~"^arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:access-point/fsap-[0-9a-f]{8,40}$" & strings.MaxRunes(128)
	MountPath: string & =~"^/mnt/[a-zA-Z0-9._-]+/?$" & strings.MinRunes(6) & strings.MaxRunes(200)
}

#FilesystemConfiguration: {
	EfsAccessPoint?: #EfsAccessPointConfiguration
	S3FilesAccessPoint?: #S3FilesAccessPointConfiguration
	SessionStorage?: #SessionStorageConfiguration
}

#HarnessAgentCoreBrowserConfig: {
	BrowserArn?: string & =~"^arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:(aws|[0-9]{12}):browser(-custom)?/(aws\\.browser\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"
}

#HarnessAgentCoreCodeInterpreterConfig: {
	CodeInterpreterArn?: string & =~"^arn:aws(-[^:]+)?:bedrock-agentcore:[a-z0-9-]+:(aws|[0-9]{12}):code-interpreter(-custom)?/(aws\\.codeinterpreter\\.v1|[a-zA-Z][a-zA-Z0-9_]{0,47}-[a-zA-Z0-9]{10})$"
}

#HarnessAgentCoreGatewayConfig: {
	GatewayArn: string & =~"^arn:aws(|-cn|-us-gov):bedrock-agentcore:[a-z0-9-]{1,20}:[0-9]{12}:gateway/([0-9a-z][-]?){1,48}-[a-z0-9]{10}$"
	OutboundAuth?: #HarnessGatewayOutboundAuth
}

#HarnessAgentCoreMemoryConfiguration: {
	ActorId?: string
	Arn: string & =~"^arn:aws:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:memory/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"
	MessagesCount?: int
	RetrievalConfig?: {...}
}

#HarnessAgentCoreMemoryRetrievalConfig: {
	// Minimum relevance score for retrieved memories. Typed as both number and string because CloudFormation marshals scalars nested in dynamic-key (patternProperties) maps as strings, while direct API/CDK callers send a JSON number; both forms must validate.
	RelevanceScore?: number
	StrategyId?: string
	// Maximum number of memory records to retrieve. Typed as both integer and string because CloudFormation marshals scalars nested in dynamic-key (patternProperties) maps as strings, while direct API/CDK callers send a JSON integer; both forms must validate.
	TopK?: int
}

#HarnessAgentCoreRuntimeEnvironment: {
	// The ARN of the underlying AgentCore Runtime.
	AgentRuntimeArn?: string & strings.MinRunes(20) & strings.MaxRunes(1011)
	// The ID of the underlying AgentCore Runtime.
	AgentRuntimeId?: string
	// The name of the underlying AgentCore Runtime.
	AgentRuntimeName?: string
	FilesystemConfigurations?: [...#FilesystemConfiguration]
	LifecycleConfiguration?: #LifecycleConfiguration
	NetworkConfiguration?: #NetworkConfiguration
}

#HarnessBedrockModelConfig: {
	// Provider-specific parameters passed through to the model provider unchanged.
	AdditionalParams?: {...}
	ApiFormat?: "converse_stream" | "responses" | "chat_completions"
	MaxTokens?: int & >=1
	ModelId: string
	Temperature?: number & >=0 & <=2
	TopP?: number & >=0 & <=1
}

#HarnessEnvironmentArtifact: {
	ContainerConfiguration?: #ContainerConfiguration
}

#HarnessEnvironmentProvider: {
	AgentCoreRuntimeEnvironment?: #HarnessAgentCoreRuntimeEnvironment
}

#HarnessGatewayOutboundAuth: {
	AwsIam?: {...}
	None?: {...}
	Oauth?: #OAuthCredentialProvider
}

#HarnessGeminiModelConfig: {
	ApiKeyArn: string & =~"^arn:aws:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/apikeycredentialprovider/[a-zA-Z0-9-.]+$"
	MaxTokens?: int & >=1
	ModelId: string
	Temperature?: number & >=0 & <=2
	TopK?: int & >=0 & <=500
	TopP?: number & >=0 & <=1
}

#HarnessInlineFunctionConfig: {
	Description: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	// JSON Schema describing the tool's input parameters.
	InputSchema: {...}
}

#HarnessLiteLlmModelConfig: {
	// Provider-specific parameters passed through to LiteLLM unchanged.
	AdditionalParams?: {...}
	ApiBase?: string & strings.MinRunes(1) & strings.MaxRunes(16383)
	ApiKeyArn?: string & =~"^arn:aws:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/apikeycredentialprovider/[a-zA-Z0-9-.]+$"
	MaxTokens?: int & >=1
	ModelId: string
	Temperature?: number & >=0 & <=2
	TopP?: number & >=0 & <=1
}

#HarnessManagedMemoryConfiguration: {
	// The ARN of the managed memory resource. Read-only, populated by the service.
	Arn?: string & =~"^arn:aws:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:memory/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"
	// Customer-managed KMS key ARN. Defaults to AWS-owned key. Not updatable after creation.
	EncryptionKeyArn?: string
	// Event retention in days. Defaults to 30.
	EventExpiryDuration?: int & >=3 & <=365
	// Strategy types to enable. Defaults to [SEMANTIC, SUMMARIZATION].
	Strategies?: [..."SEMANTIC" | "SUMMARIZATION" | "USER_PREFERENCE" | "EPISODIC"]
}

#HarnessMemoryConfiguration: {
	AgentCoreMemoryConfiguration?: #HarnessAgentCoreMemoryConfiguration
	Disabled?: #HarnessDisabledMemoryConfiguration
	ManagedMemoryConfiguration?: #HarnessManagedMemoryConfiguration
}

#HarnessModelConfiguration: {
	BedrockModelConfig?: #HarnessBedrockModelConfig
	GeminiModelConfig?: #HarnessGeminiModelConfig
	LiteLlmModelConfig?: #HarnessLiteLlmModelConfig
	OpenAiModelConfig?: #HarnessOpenAiModelConfig
}

#HarnessOpenAiModelConfig: {
	// Provider-specific parameters passed through to the model provider unchanged.
	AdditionalParams?: {...}
	ApiFormat?: "chat_completions" | "responses"
	ApiKeyArn: string & =~"^arn:aws:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/apikeycredentialprovider/[a-zA-Z0-9-.]+$"
	MaxTokens?: int & >=1
	ModelId: string
	Temperature?: number & >=0 & <=2
	TopP?: number & >=0 & <=1
}

#HarnessRemoteMcpConfig: {
	Headers?: {...}
	Url: string & strings.MinRunes(1) & strings.MaxRunes(16383)
}

#HarnessSkill: {
	AwsSkills?: #HarnessSkillAwsSkillsSource
	Git?: #HarnessSkillGitSource
	// The filesystem path to the skill definition.
	Path?: string & strings.MinRunes(1)
	S3?: #HarnessSkillS3Source
}

#HarnessSkillAwsSkillsSource: {
	// Optionally filter allowed skills with glob syntax, e.g., ['core-skills/*'].
	Paths?: [...string & =~"^([^*?\\[\\]]|\\*)+$" & strings.MinRunes(1) & strings.MaxRunes(4096)]
}

#HarnessSkillGitAuth: {
	// The ARN of the credential in AgentCore Identity containing the password or personal access token.
	CredentialArn: string & =~"^arn:aws:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:token-vault/[a-zA-Z0-9-.]+/apikeycredentialprovider/[a-zA-Z0-9-.]+$"
	// Username for authentication. Defaults to 'oauth2' if not specified.
	Username?: string
}

#HarnessSkillGitSource: {
	Auth?: #HarnessSkillGitAuth
	// Subdirectory within the repository containing the skill.
	Path?: string
	// The HTTPS URL of the git repository.
	Url: string & =~"^https://" & strings.MinRunes(8)
}

#HarnessSkillS3Source: {
	// The S3 URI pointing to the skill directory (e.g., s3://bucket/skills/my-skill/).
	Uri: string & =~"^s3://" & strings.MinRunes(5)
}

#HarnessSlidingWindowConfiguration: {
	MessagesCount?: int
}

#HarnessSummarizationConfiguration: {
	PreserveRecentMessages?: int
	SummarizationSystemPrompt?: string
	SummaryRatio?: number
}

#HarnessSystemContentBlock: {
	// The text content of the system prompt block.
	Text: string & strings.MinRunes(1)
}

#HarnessTool: {
	Config?: #HarnessToolConfiguration
	Name?: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Type: "remote_mcp" | "agentcore_browser" | "agentcore_gateway" | "inline_function" | "agentcore_code_interpreter"
}

#HarnessToolConfiguration: {
	AgentCoreBrowser?: #HarnessAgentCoreBrowserConfig
	AgentCoreCodeInterpreter?: #HarnessAgentCoreCodeInterpreterConfig
	AgentCoreGateway?: #HarnessAgentCoreGatewayConfig
	InlineFunction?: #HarnessInlineFunctionConfig
	RemoteMcp?: #HarnessRemoteMcpConfig
}

#HarnessTruncationConfiguration: {
	Config?: #HarnessTruncationStrategyConfiguration
	Strategy: "sliding_window" | "summarization" | "none"
}

#HarnessTruncationStrategyConfiguration: {
	SlidingWindow?: #HarnessSlidingWindowConfiguration
	Summarization?: #HarnessSummarizationConfiguration
}

#LifecycleConfiguration: {
	IdleRuntimeSessionTimeout?: int & >=60 & <=28800
	MaxLifetime?: int & >=60 & <=28800
}

#ManagedVpcResource: {
	EndpointIpAddressType: "IPV4" | "IPV6"
	RoutingDomain?: string & strings.MinRunes(3) & strings.MaxRunes(255)
	SecurityGroupIds?: [...string & =~"^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$"]
	SubnetIds: [...string & =~"^subnet-[0-9a-zA-Z]{8,17}$"]
	Tags?: {...}
	VpcIdentifier: string & =~"^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$"
}

#NetworkConfiguration: {
	NetworkMode: "PUBLIC" | "VPC"
	NetworkModeConfig?: #VpcConfig
}

#OAuthCredentialProvider: {
	CustomParameters?: {...}
	DefaultReturnUrl?: string & =~"^\\w+:(\\/?\\/?)[^\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	GrantType?: "CLIENT_CREDENTIALS" | "AUTHORIZATION_CODE"
	ProviderArn: string & =~"^arn:([^:]*):([^:]*):([^:]*):([0-9]{12})?:(.+)$"
	Scopes: [...string & strings.MinRunes(1) & strings.MaxRunes(64)]
}

#PrivateEndpoint: {
	ManagedVpcResource?: #ManagedVpcResource
	SelfManagedLatticeResource?: #SelfManagedLatticeResource
}

#PrivateEndpointOverride: {
	Domain: string & strings.MinRunes(1) & strings.MaxRunes(253)
	PrivateEndpoint: #PrivateEndpoint
}

#S3FilesAccessPointConfiguration: {
	AccessPointArn: string & =~"^arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}/access-point/fsap-[0-9a-f]{17,40}$" & strings.MaxRunes(256)
	MountPath: string & =~"^/mnt/[a-zA-Z0-9._-]+/?$" & strings.MinRunes(6) & strings.MaxRunes(200)
}

#SelfManagedLatticeResource: {
	ResourceConfigurationIdentifier: string & =~"^((rcfg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#SessionStorageConfiguration: {
	MountPath: string & =~"^/mnt/[a-zA-Z0-9._-]+/?$" & strings.MinRunes(6) & strings.MaxRunes(200)
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9\\s_.:/=+\\-@]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9\\s_.:/=+\\-@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcConfig: {
	SecurityGroups: [...string & =~"^sg-[0-9a-zA-Z]{8,17}$"]
	Subnets: [...string & =~"^subnet-[0-9a-zA-Z]{8,17}$"]
}
