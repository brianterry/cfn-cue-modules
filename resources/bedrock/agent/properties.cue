package agent

import "strings"

#Properties: {
	// List of ActionGroups
	ActionGroups?: [...#AgentActionGroup]
	AgentCollaboration?: #AgentCollaboration
	// List of Agent Collaborators
	AgentCollaborators?: [...#AgentCollaborator]
	// Name for a resource.
	AgentName: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	// ARN of a IAM role.
	AgentResourceRoleArn?: string & strings.MaxRunes(2048)
	// Specifies whether to automatically prepare after creating or updating the agent.
	AutoPrepare?: bool
	CustomOrchestration?: #CustomOrchestration
	// A KMS key ARN
	CustomerEncryptionKeyArn?: string & =~"^arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Description of the Resource.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	FoundationModel?: #FoundationModel
	GuardrailConfiguration?: #GuardrailConfiguration
	// Max Session Time.
	IdleSessionTTLInSeconds?: number & >=60 & <=5400
	// Instruction for the agent.
	Instruction?: string & strings.MinRunes(40)
	// List of Agent Knowledge Bases
	KnowledgeBases?: [...#AgentKnowledgeBase]
	MemoryConfiguration?: #MemoryConfiguration
	OrchestrationType?: #OrchestrationType
	PromptOverrideConfiguration?: #PromptOverrideConfiguration
	// Specifies whether to allow deleting agent while it is in use.
	SkipResourceInUseCheckOnDelete?: bool
	Tags?: #TagsMap
	TestAliasTags?: #TagsMap
}

#APISchema: {
	S3: #S3Identifier
} | {
	Payload: string
}

#ActionGroupExecutor: {
	Lambda: string & =~"^arn:(aws[a-zA-Z-]*)?:lambda:[a-z0-9-]{1,20}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$" & strings.MaxRunes(2048)
} | {
	CustomControl: #CustomControlMethod
}

#ActionGroupSignature: "AMAZON.UserInput" | "AMAZON.CodeInterpreter"

#ActionGroupState: "ENABLED" | "DISABLED"

#AdditionalModelRequestFields: {...}

#AgentActionGroup: {
	ActionGroupExecutor?: #ActionGroupExecutor
	// Name of the action group
	ActionGroupName: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	ActionGroupState?: #ActionGroupState
	ApiSchema?: #APISchema
	// Description of action group
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	FunctionSchema?: #FunctionSchema
	ParentActionGroupSignature?: #ActionGroupSignature
	// Specifies whether to allow deleting action group while it is in use.
	SkipResourceInUseCheckOnDelete?: bool
}

#AgentCollaboration: "DISABLED" | "SUPERVISOR" | "SUPERVISOR_ROUTER"

#AgentCollaborator: {
	// Agent descriptor for agent collaborator
	AgentDescriptor: {
		AliasArn?: string & =~"^arn:(aws[a-zA-Z-]*)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:agent-alias/[0-9a-zA-Z]{10}/[0-9a-zA-Z]{10}$"
	}
	// Agent collaborator instruction
	CollaborationInstruction: string
	// Agent collaborator name
	CollaboratorName: string
	RelayConversationHistory?: #RelayConversationHistory
}

#AgentKnowledgeBase: {
	// Description of the Resource.
	Description: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// Identifier for a resource.
	KnowledgeBaseId: string & =~"^[0-9a-zA-Z]{10}$"
	KnowledgeBaseState?: #KnowledgeBaseState
}

#AgentStatus: "CREATING" | "PREPARING" | "PREPARED" | "NOT_PREPARED" | "DELETING" | "FAILED" | "VERSIONING" | "UPDATING"

#CreationMode: "DEFAULT" | "OVERRIDDEN"

#CustomControlMethod: "RETURN_CONTROL"

#CustomOrchestration: {
	Executor?: #OrchestrationExecutor
}

#EnabledMemoryTypes: [...#MemoryType]

#FoundationModel: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:(([0-9]{12}:custom-model/[a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}(([:][a-z0-9-]{1,63}){0,2})?/[a-z0-9]{12})|(:foundation-model/([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2}))|([0-9]{12}:(inference-profile|application-inference-profile)/[a-zA-Z0-9-:.]+))|(([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63}([.]?[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2}))|(([0-9a-zA-Z][_-]?)+)$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#Function: {
	// Description of function
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1200)
	// Name for a resource.
	Name: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	Parameters?: #ParameterMap
	RequireConfirmation?: #RequireConfirmation
}

#FunctionSchema: {
	// List of Function definitions
	Functions: [...#Function]
}

#GuardrailConfiguration: {
	// Identifier for the guardrail, could be the id or the arn
	GuardrailIdentifier?: string & =~"^(([a-z0-9]+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+))$" & strings.MaxRunes(2048)
	// Version of the guardrail
	GuardrailVersion?: string & =~"^(([0-9]{1,8})|(DRAFT))$"
}

#InferenceConfiguration: {
	// Maximum length of output
	MaximumLength?: number & >=0 & <=131072
	// List of stop sequences
	StopSequences?: [...string]
	// Controls randomness, higher values increase diversity
	Temperature?: number & >=0 & <=1
	// Sample from the k most likely next tokens
	TopK?: number & >=0 & <=500
	// Cumulative probability cutoff for token selection
	TopP?: number & >=0 & <=1
}

#KnowledgeBaseState: "ENABLED" | "DISABLED"

#MemoryConfiguration: {
	EnabledMemoryTypes?: #EnabledMemoryTypes
	SessionSummaryConfiguration?: #SessionSummaryConfiguration
	// Maximum number of days to store session details
	StorageDays?: number
}

#MemoryType: "SESSION_SUMMARY"

#OrchestrationExecutor: {
	// ARN of a Lambda.
	Lambda: string & =~"^arn:(aws[a-zA-Z-]*)?:lambda:[a-z0-9-]{1,20}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$" & strings.MaxRunes(2048)
}

#OrchestrationType: "DEFAULT" | "CUSTOM_ORCHESTRATION"

#ParameterDetail: {
	// Description of function parameter.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// Information about if a parameter is required for function call. Default to false.
	Required?: bool
	Type: #Type
}

#ParameterMap: {...}

#PromptConfiguration: {
	AdditionalModelRequestFields?: #AdditionalModelRequestFields
	// Base Prompt Template.
	BasePromptTemplate?: string & strings.MinRunes(1) & strings.MaxRunes(100000)
	FoundationModel?: #FoundationModel
	InferenceConfiguration?: #InferenceConfiguration
	ParserMode?: #CreationMode
	PromptCreationMode?: #CreationMode
	PromptState?: #PromptState
	PromptType?: #PromptType
}

#PromptOverrideConfiguration: {
	// ARN of a Lambda.
	OverrideLambda?: string & =~"^arn:(aws[a-zA-Z-]*)?:lambda:[a-z0-9-]{1,20}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$" & strings.MaxRunes(2048)
	// List of BasePromptConfiguration
	PromptConfigurations: [...#PromptConfiguration]
}

#PromptState: "ENABLED" | "DISABLED"

#PromptType: "PRE_PROCESSING" | "ORCHESTRATION" | "POST_PROCESSING" | "ROUTING_CLASSIFIER" | "MEMORY_SUMMARIZATION" | "KNOWLEDGE_BASE_RESPONSE_GENERATION"

#RelayConversationHistory: "TO_COLLABORATOR" | "DISABLED"

#RequireConfirmation: "ENABLED" | "DISABLED"

#S3Identifier: {
	// A bucket in S3.
	S3BucketName?: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// A object key in S3.
	S3ObjectKey?: string & =~"^[\\.\\-\\!\\*\\_\\'\\(\\)a-zA-Z0-9][\\.\\-\\!\\*\\_\\'\\(\\)\\/a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#SessionSummaryConfiguration: {
	// Maximum number of Sessions to Summarize
	MaxRecentSessions?: number
}

#TagsMap: {...}

#Type: "string" | "number" | "integer" | "boolean" | "array"
