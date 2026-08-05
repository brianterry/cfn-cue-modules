package aiagent

import "strings"

#Properties: {
	AssistantId: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"
	Configuration: #AIAgentConfiguration
	Description?: string & =~"^[a-zA-Z0-9\\s_.,-]+" & strings.MinRunes(1) & strings.MaxRunes(255)
	Name?: string & =~"^[a-zA-Z0-9\\s_.,-]+" & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: #Tags
	Type: #AIAgentType
}

#AnswerRecommendationAIAgentConfiguration: {
	AnswerGenerationAIGuardrailId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	AnswerGenerationAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	AssociationConfigurations?: [...#AssociationConfiguration]
	IntentLabelingGenerationAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	Locale?: string & strings.MinRunes(1)
	QueryReformulationAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
}

#AssociationConfiguration: {
	AssociationConfigurationData?: #AssociationConfigurationData
	AssociationId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"
	AssociationType?: #AIAgentAssociationConfigurationType
}

#CaseSummarizationAIAgentConfiguration: {
	CaseSummarizationAIGuardrailId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	CaseSummarizationAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	Locale?: string & strings.MinRunes(1)
}

#EmailGenerativeAnswerAIAgentConfiguration: {
	AssociationConfigurations?: [...#AssociationConfiguration]
	EmailGenerativeAnswerAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	EmailQueryReformulationAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	Locale?: string & strings.MinRunes(1)
}

#EmailOverviewAIAgentConfiguration: {
	EmailOverviewAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	Locale?: string & strings.MinRunes(1)
}

#EmailResponseAIAgentConfiguration: {
	AssociationConfigurations?: [...#AssociationConfiguration]
	EmailQueryReformulationAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	EmailResponseAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	Locale?: string & strings.MinRunes(1)
}

#KnowledgeBaseAssociationConfigurationData: {
	ContentTagFilter?: #TagFilter
	MaxResults?: number & >=1 & <=100
	OverrideKnowledgeBaseSearchType?: #KnowledgeBaseSearchType
}

#ManualSearchAIAgentConfiguration: {
	AnswerGenerationAIGuardrailId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	AnswerGenerationAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	AssociationConfigurations?: [...#AssociationConfiguration]
	Locale?: string & strings.MinRunes(1)
}

#NoteTakingAIAgentConfiguration: {
	Locale?: string & strings.MinRunes(1)
	NoteTakingAIGuardrailId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	NoteTakingAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
}

#OrchestrationAIAgentConfiguration: {
	ConnectInstanceArn?: string & =~"^arn:[a-z-]+?:[a-z-]+?:[a-z0-9-]*?:([0-9]{12})?:[a-zA-Z0-9-:/]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Locale?: string & strings.MinRunes(1)
	OrchestrationAIGuardrailId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	OrchestrationAIPromptId: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	ToolConfigurations?: #ToolConfigurationList
}

#SelfServiceAIAgentConfiguration: {
	AssociationConfigurations?: [...#AssociationConfiguration]
	SelfServiceAIGuardrailId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	SelfServiceAnswerGenerationAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
	SelfServicePreProcessingAIPromptId?: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(:[A-Z0-9_$]+){0,1}$"
}

#TagCondition: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#ToolConfiguration: {
	Annotations?: #Annotation
	Description?: string & strings.MinRunes(1)
	InputSchema?: {...}
	Instruction?: #ToolInstruction
	OutputFilters?: #ToolOutputFilterList
	OutputSchema?: {...}
	OverrideInputValues?: #ToolOverrideInputValueList
	Title?: string & strings.MinRunes(1)
	ToolId?: string & strings.MinRunes(1)
	ToolName: string & strings.MinRunes(1)
	ToolType: #ToolType
	UserInteractionConfiguration?: #UserInteractionConfiguration
}

#ToolInstruction: {
	Examples?: #ToolExampleList
	Instruction?: string
}

#ToolOutputConfiguration: {
	OutputVariableNameOverride?: string & strings.MinRunes(1)
	SessionDataNamespace?: string & strings.MinRunes(1)
}

#ToolOutputFilter: {
	JsonPath: string & strings.MinRunes(1)
	OutputConfiguration?: #ToolOutputConfiguration
}

#ToolOverrideConstantInputValue: {
	Type: #ToolOverrideInputValueType
	Value: string & strings.MinRunes(1)
}

#ToolOverrideInputValue: {
	JsonPath: string & strings.MinRunes(1)
	Value: #ToolOverrideInputValueConfiguration
}

#UserInteractionConfiguration: {
	IsUserConfirmationRequired?: bool
}
