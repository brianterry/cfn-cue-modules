package promptversion

import "strings"

#Properties: {
	// Description for a prompt version resource.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// ARN of a prompt resource possibly with a version
	PromptArn: string & =~"^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:prompt/[0-9a-zA-Z]{10})$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Tags?: #TagsMap
}

#CachePointBlock: {
	Type: #CachePointType
}

#ChatPromptTemplateConfiguration: {
	// List of input variables
	InputVariables?: [...#PromptInputVariable]
	// List of messages for chat prompt template
	Messages: [...#Message]
	// Configuration for chat prompt template
	System?: [...#SystemContentBlock]
	ToolConfiguration?: #ToolConfiguration
}

#Message: {
	// List of Content Blocks
	Content: [...#ContentBlock]
	Role: #ConversationRole
}

#PromptAgentResource: {
	// Arn representation of the Agent Alias.
	AgentIdentifier: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:agent-alias/[0-9a-zA-Z]{10}/[0-9a-zA-Z]{10}$" & strings.MaxRunes(2048)
}

#PromptInputVariable: {
	// Name for an input variable
	Name?: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
}

#PromptMetadataEntry: {
	Key: #PromptMetadataKey
	Value: #PromptMetadataValue
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

#PromptVariant: {
	AdditionalModelRequestFields?: #AdditionalModelRequestFields
	GenAiResource?: #PromptGenAiResource
	InferenceConfiguration?: #PromptInferenceConfiguration
	Metadata?: #PromptMetadataList
	// ARN or Id of a Bedrock Foundational Model or Inference Profile, or the ARN of a imported model, or a provisioned throughput ARN for custom models.
	ModelId?: string & =~"^(arn:aws(-[^:]{1,12})?:(bedrock|sagemaker):[a-z0-9-]{1,20}:([0-9]{12})?:([a-z-]+/)?)?([a-zA-Z0-9.-]{1,63}){0,2}(([:][a-z0-9-]{1,63}){0,2})?(/[a-z0-9]{1,12})?$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Name for a variant.
	Name: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	TemplateConfiguration: #PromptTemplateConfiguration
	TemplateType: #PromptTemplateType
}

#SpecificToolChoice: {
	// Tool name
	Name: string & =~"^[a-zA-Z][a-zA-Z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#TextPromptTemplateConfiguration: {
	CachePoint?: #CachePointBlock
	// List of input variables
	InputVariables?: [...#PromptInputVariable]
	// Prompt content for String prompt template
	Text: string & strings.MinRunes(1) & strings.MaxRunes(200000)
}

#ToolConfiguration: {
	ToolChoice?: #ToolChoice
	// List of Tools
	Tools: [...#Tool]
}

#ToolSpecification: {
	Description?: string & strings.MinRunes(1)
	InputSchema: #ToolInputSchema
	// Tool name
	Name: string & =~"^[a-zA-Z][a-zA-Z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
}
