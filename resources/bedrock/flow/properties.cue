package flow

import "strings"

#Properties: {
	// A KMS key ARN
	CustomerEncryptionKeyArn?: string & =~"^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Definition?: #FlowDefinition
	DefinitionS3Location?: #S3Location
	// A JSON string containing a Definition with the same schema as the Definition property of this resource
	DefinitionString?: string & strings.MaxRunes(512000)
	DefinitionSubstitutions?: #DefinitionSubstitutions
	// Description of the flow
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// ARN of a IAM role
	ExecutionRoleArn: string & =~"^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/(service-role/)?.+$" & strings.MaxRunes(2048)
	// Name for the flow
	Name: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	Tags?: #TagsMap
	TestAliasTags?: #TagsMap
}

#AgentFlowNodeConfiguration: {
	// Arn representation of the Agent Alias.
	AgentAliasArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:agent-alias/[0-9a-zA-Z]{10}/[0-9a-zA-Z]{10}$" & strings.MaxRunes(2048)
}

#ConditionFlowNodeConfiguration: {
	// List of conditions in a condition node
	Conditions: [...#FlowCondition]
}

#FieldForReranking: {
	// Field name for reranking
	FieldName: string & strings.MinRunes(1) & strings.MaxRunes(2000)
}

#FlowCondition: {
	// Expression for a condition in a flow
	Expression?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Name of a condition in a flow
	Name: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"
}

#FlowConditionalConnectionConfiguration: {
	// Name of a condition in a flow
	Condition: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"
}

#FlowConnection: {
	Configuration?: #FlowConnectionConfiguration
	// Name of a connection in a flow
	Name: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,100}$"
	// Name of a node in a flow
	Source: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"
	// Name of a node in a flow
	Target: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"
	Type: #FlowConnectionType
}

#FlowDataConnectionConfiguration: {
	// Name of a node output in a flow
	SourceOutput: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"
	// Name of a node input in a flow
	TargetInput: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"
}

#FlowDefinition: {
	// List of connections
	Connections?: [...#FlowConnection]
	// List of nodes in a flow
	Nodes?: [...#FlowNode]
}

#FlowNode: {
	Configuration?: #FlowNodeConfiguration
	// List of node inputs in a flow
	Inputs?: [...#FlowNodeInput]
	// Name of a node in a flow
	Name: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"
	// List of node outputs in a flow
	Outputs?: [...#FlowNodeOutput]
	Type: #FlowNodeType
}

#FlowNodeInput: {
	Category?: #FlowNodeInputCategory
	// Expression for a node input in a flow
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Name of a node input in a flow
	Name: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"
	Type: #FlowNodeIODataType
}

#FlowNodeOutput: {
	// Name of a node output in a flow
	Name: string & =~"^[a-zA-Z]([_]?[0-9a-zA-Z]){1,50}$"
	Type: #FlowNodeIODataType
}

#FlowValidation: {
	// validation message
	Message: string
}

#GuardrailConfiguration: {
	// Identifier for the guardrail, could be the id or the arn
	GuardrailIdentifier?: string & =~"^(([a-z0-9]+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+))$" & strings.MaxRunes(2048)
	// Version of the guardrail
	GuardrailVersion?: string & =~"^(([0-9]{1,8})|(DRAFT))$"
}

#InlineCodeFlowNodeConfiguration: {
	// The inline code entered by customers. max size is 5MB.
	Code: string & strings.MaxRunes(5000000)
	Language: #SupportedLanguages
}

#KnowledgeBaseFlowNodeConfiguration: {
	GuardrailConfiguration?: #GuardrailConfiguration
	InferenceConfiguration?: #PromptInferenceConfiguration
	// Identifier of the KnowledgeBase
	KnowledgeBaseId: string & =~"^[0-9a-zA-Z]+$" & strings.MaxRunes(10)
	// ARN or Id of a Bedrock Foundational Model or Inference Profile, or the ARN of a imported model, or a provisioned throughput ARN for custom models.
	ModelId?: string & =~"^(arn:aws(-[^:]{1,12})?:(bedrock|sagemaker):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-zA-Z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Number Of Results to Retrieve
	NumberOfResults?: number & >=1 & <=100
	OrchestrationConfiguration?: #KnowledgeBaseOrchestrationConfiguration
	PromptTemplate?: #KnowledgeBasePromptTemplate
	RerankingConfiguration?: #VectorSearchRerankingConfiguration
}

#KnowledgeBaseOrchestrationConfiguration: {
	AdditionalModelRequestFields?: #AdditionalModelRequestFields
	InferenceConfig?: #PromptInferenceConfiguration
	PerformanceConfig?: #PerformanceConfiguration
	PromptTemplate?: #KnowledgeBasePromptTemplate
}

#LambdaFunctionFlowNodeConfiguration: {
	// ARN of a Lambda.
	LambdaArn: string & =~"^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$" & strings.MaxRunes(2048)
}

#LexFlowNodeConfiguration: {
	// ARN of a Lex bot alias
	BotAliasArn: string & =~"^arn:aws(|-us-gov):lex:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:bot-alias/[0-9a-zA-Z]+/[0-9a-zA-Z]+$" & strings.MaxRunes(78)
	// Lex bot locale id
	LocaleId: string & strings.MinRunes(1) & strings.MaxRunes(10)
}

#LoopControllerFlowNodeConfiguration: {
	ContinueCondition: #FlowCondition
	// Maximum number of iterations the loop can perform
	MaxIterations?: number & >=1 & <=1000
}

#LoopFlowNodeConfiguration: {
	Definition: #FlowDefinition
}

#MetadataConfigurationForReranking: {
	SelectionMode: #RerankingMetadataSelectionMode
	SelectiveModeConfiguration?: #RerankingMetadataSelectiveModeConfiguration
}

#PerformanceConfiguration: {
	Latency?: #PerformanceConfigurationLatency
}

#PromptFlowNodeConfiguration: {
	GuardrailConfiguration?: #GuardrailConfiguration
	SourceConfiguration: #PromptFlowNodeSourceConfiguration
}

#PromptFlowNodeInlineConfiguration: {
	InferenceConfiguration?: #PromptInferenceConfiguration
	// ARN or Id of a Bedrock Foundational Model or Inference Profile, or the ARN of a imported model, or a provisioned throughput ARN for custom models.
	ModelId: string & =~"^(arn:aws(-[^:]{1,12})?:(bedrock|sagemaker):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-zA-Z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	TemplateConfiguration: #PromptTemplateConfiguration
	TemplateType: #PromptTemplateType
}

#PromptFlowNodeResourceConfiguration: {
	// ARN of a prompt resource possibly with a version
	PromptArn: string & =~"^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:prompt/[0-9a-zA-Z]{10}(?::[0-9]{1,5})?)$"
}

#PromptInputVariable: {
	// Name for an input variable
	Name?: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
}

#PromptModelInferenceConfiguration: {
	// Maximum length of output
	MaxTokens?: number & >=0 & <=4096
	// List of stop sequences
	StopSequences?: [...string]
	// Controls randomness, higher values increase diversity
	Temperature?: number & >=0 & <=1
	// Cumulative probability cutoff for token selection
	TopP?: number & >=0 & <=1
}

#RetrievalFlowNodeConfiguration: {
	ServiceConfiguration: #RetrievalFlowNodeServiceConfiguration
}

#RetrievalFlowNodeS3Configuration: {
	// bucket name of an s3 that will be used for Retrieval flow node configuration
	BucketName: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"
}

#S3Location: {
	// A bucket in S3
	Bucket: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// A object key in S3
	Key: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The version of the the S3 object to use
	Version?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#StorageFlowNodeConfiguration: {
	ServiceConfiguration: #StorageFlowNodeServiceConfiguration
}

#StorageFlowNodeS3Configuration: {
	// bucket name of an s3 that will be used for storage flow node configuration
	BucketName: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"
}

#TextPromptTemplateConfiguration: {
	// List of input variables
	InputVariables?: [...#PromptInputVariable]
	// Prompt content for String prompt template
	Text: string & strings.MinRunes(1) & strings.MaxRunes(200000)
}

#VectorSearchBedrockRerankingConfiguration: {
	MetadataConfiguration?: #MetadataConfigurationForReranking
	ModelConfiguration: #VectorSearchBedrockRerankingModelConfiguration
	// Number Of Results For Reranking
	NumberOfRerankedResults?: number & >=1 & <=100
}

#VectorSearchBedrockRerankingModelConfiguration: {
	AdditionalModelRequestFields?: #AdditionalModelRequestFields
	ModelArn: #BedrockRerankingModelArn
}

#VectorSearchRerankingConfiguration: {
	BedrockRerankingConfiguration?: #VectorSearchBedrockRerankingConfiguration
	Type: #VectorSearchRerankingConfigurationType
}
