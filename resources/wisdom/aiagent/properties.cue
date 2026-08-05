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

#AIAgentAssociationConfigurationType: "KNOWLEDGE_BASE"

#AIAgentConfiguration: {
	ManualSearchAIAgentConfiguration: #ManualSearchAIAgentConfiguration
} | {
	AnswerRecommendationAIAgentConfiguration: #AnswerRecommendationAIAgentConfiguration
} | {
	SelfServiceAIAgentConfiguration: #SelfServiceAIAgentConfiguration
} | {
	EmailResponseAIAgentConfiguration: #EmailResponseAIAgentConfiguration
} | {
	EmailOverviewAIAgentConfiguration: #EmailOverviewAIAgentConfiguration
} | {
	EmailGenerativeAnswerAIAgentConfiguration: #EmailGenerativeAnswerAIAgentConfiguration
} | {
	OrchestrationAIAgentConfiguration: #OrchestrationAIAgentConfiguration
} | {
	NoteTakingAIAgentConfiguration: #NoteTakingAIAgentConfiguration
} | {
	CaseSummarizationAIAgentConfiguration: #CaseSummarizationAIAgentConfiguration
}

#AIAgentType: "MANUAL_SEARCH" | "ANSWER_RECOMMENDATION" | "SELF_SERVICE" | "EMAIL_RESPONSE" | "EMAIL_OVERVIEW" | "EMAIL_GENERATIVE_ANSWER" | "ORCHESTRATION" | "NOTE_TAKING" | "CASE_SUMMARIZATION"

#Annotation: {...}

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

#AssociationConfigurationData: {
	KnowledgeBaseAssociationConfigurationData: #KnowledgeBaseAssociationConfigurationData
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

#KnowledgeBaseSearchType: "HYBRID" | "SEMANTIC"

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

#OrCondition: {
	AndConditions: [...#TagCondition]
} | {
	TagCondition: #TagCondition
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

#TagFilter: {
	TagCondition: #TagCondition
} | {
	AndConditions: [...#TagCondition]
} | {
	OrConditions: [...#OrCondition]
}

#Tags: {...}

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

#ToolConfigurationList: [...#ToolConfiguration]

#ToolExampleList: [...string]

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

#ToolOutputFilterList: [...#ToolOutputFilter]

#ToolOverrideConstantInputValue: {
	Type: #ToolOverrideInputValueType
	Value: string & strings.MinRunes(1)
}

#ToolOverrideInputValue: {
	JsonPath: string & strings.MinRunes(1)
	Value: #ToolOverrideInputValueConfiguration
}

#ToolOverrideInputValueConfiguration: {
	Constant: #ToolOverrideConstantInputValue
}

#ToolOverrideInputValueList: [...#ToolOverrideInputValue]

#ToolOverrideInputValueType: "STRING" | "NUMBER" | "JSON_STRING"

#ToolType: "MODEL_CONTEXT_PROTOCOL" | "RETURN_TO_CONTROL" | "CONSTANT"

#UserInteractionConfiguration: {
	IsUserConfirmationRequired?: bool
}
