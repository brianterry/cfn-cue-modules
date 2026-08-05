package memory

import "strings"

#Properties: {
	Description?: #Description
	EncryptionKeyArn?: #Arn
	// Duration in days until memory events expire
	EventExpiryDuration: int & >=3 & <=365
	IndexedKeys?: #IndexedKeysList
	MemoryExecutionRoleArn?: #Arn
	Name: #Name
	StreamDeliveryResources?: #StreamDeliveryResources
	Tags?: #TagsMap
}

#ContentConfiguration: {
	// The level of content detail to deliver
	Level?: "METADATA_ONLY" | "FULL_CONTENT"
	// The type of content to deliver
	Type: "MEMORY_RECORDS"
}

#CustomConfigurationInput: {
	EpisodicOverride?: #EpisodicOverride
	SelfManagedConfiguration?: #SelfManagedConfiguration
	SemanticOverride?: #SemanticOverride
	SummaryOverride?: #SummaryOverride
	UserPreferenceOverride?: #UserPreferenceOverride
}

#CustomMemoryStrategy: {
	Configuration?: #CustomConfigurationInput
	// Creation timestamp of the memory strategy
	CreatedAt?: string
	Description?: #Description
	MemoryRecordSchema?: #MemoryRecordSchema
	Name: #Name
	NamespaceTemplates?: #NamespacesList
	Namespaces?: #NamespacesList
	// Status of the memory strategy
	Status?: "CREATING" | "ACTIVE" | "DELETING" | "FAILED"
	// Unique identifier for the memory strategy
	StrategyId?: string & =~"^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$" & strings.MinRunes(12)
	// Type of memory strategy
	Type?: "SEMANTIC" | "SUMMARIZATION" | "USER_PREFERENCE" | "CUSTOM" | "EPISODIC"
	// Last update timestamp of the memory strategy
	UpdatedAt?: string
}

#EpisodicMemoryStrategy: {
	// Creation timestamp of the memory strategy
	CreatedAt?: string
	Description?: #Description
	MemoryRecordSchema?: #MemoryRecordSchema
	Name: #Name
	NamespaceTemplates?: #NamespacesList
	Namespaces?: #NamespacesList
	ReflectionConfiguration?: #EpisodicReflectionConfigurationInput
	// Status of the memory strategy
	Status?: "CREATING" | "ACTIVE" | "DELETING" | "FAILED"
	// Unique identifier for the memory strategy
	StrategyId?: string & =~"^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$" & strings.MinRunes(12)
	// Type of memory strategy
	Type?: "SEMANTIC" | "SUMMARIZATION" | "USER_PREFERENCE" | "CUSTOM" | "EPISODIC"
	// Last update timestamp of the memory strategy
	UpdatedAt?: string
}

#EpisodicOverride: {
	Consolidation?: #EpisodicOverrideConsolidationConfigurationInput
	Extraction?: #EpisodicOverrideExtractionConfigurationInput
	Reflection?: #EpisodicOverrideReflectionConfigurationInput
}

#EpisodicOverrideConsolidationConfigurationInput: {
	AppendToPrompt: #Prompt
	ModelId: string
}

#EpisodicOverrideExtractionConfigurationInput: {
	AppendToPrompt: #Prompt
	ModelId: string
}

#EpisodicOverrideReflectionConfigurationInput: {
	AppendToPrompt: #Prompt
	MemoryRecordSchema?: #MemoryRecordSchema
	ModelId: string
	NamespaceTemplates?: #NamespacesList
	Namespaces?: #NamespacesList
}

#EpisodicReflectionConfigurationInput: {
	MemoryRecordSchema?: #MemoryRecordSchema
	NamespaceTemplates?: #NamespacesList
	Namespaces?: #NamespacesList
}

#ExtractionConfig: {
	LlmExtractionConfig?: #LlmExtractionConfig
}

#IndexedKey: {
	Key: #MetadataKey
	Type: #MetadataValueType
}

#InvocationConfigurationInput: {
	PayloadDeliveryBucketName?: string & =~"^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$"
	TopicArn?: #Arn
}

#KinesisResource: {
	ContentConfigurations: [...#ContentConfiguration]
	DataStreamArn: #Arn
}

#LlmExtractionConfig: {
	Definition: #Definition
	LlmExtractionInstruction?: #LlmExtractionInstruction
	Validation?: #Validation
}

#MemoryRecordSchema: {
	MetadataSchema?: #MetadataSchemaList
}

#MemoryStrategy: {
	CustomMemoryStrategy?: #CustomMemoryStrategy
	EpisodicMemoryStrategy?: #EpisodicMemoryStrategy
	SemanticMemoryStrategy?: #SemanticMemoryStrategy
	SummaryMemoryStrategy?: #SummaryMemoryStrategy
	UserPreferenceMemoryStrategy?: #UserPreferenceMemoryStrategy
}

#MessageBasedTriggerInput: {
	MessageCount?: int & >=1 & <=50
}

#MetadataSchemaEntry: {
	ExtractionConfig?: #ExtractionConfig
	Key: #MetadataKey
	Type?: #MetadataValueType
}

#NumberValidation: {
	MaxValue?: number
	MinValue?: number
}

#SelfManagedConfiguration: {
	HistoricalContextWindowSize?: int & >=0 & <=50
	InvocationConfiguration?: #InvocationConfigurationInput
	TriggerConditions?: #TriggerConditionList
}

#SemanticConsolidationOverride: {
	AppendToPrompt: #Prompt
	// ID of the model to use
	ModelId: string
}

#SemanticExtractionOverride: {
	AppendToPrompt: #Prompt
	// ID of the model to use
	ModelId: string
}

#SemanticMemoryStrategy: {
	// Creation timestamp of the memory strategy
	CreatedAt?: string
	Description?: #Description
	MemoryRecordSchema?: #MemoryRecordSchema
	Name: #Name
	NamespaceTemplates?: #NamespacesList
	Namespaces?: #NamespacesList
	// Status of the memory strategy
	Status?: "CREATING" | "ACTIVE" | "DELETING" | "FAILED"
	// Unique identifier for the memory strategy
	StrategyId?: string & =~"^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$" & strings.MinRunes(12)
	// Type of memory strategy
	Type?: "SEMANTIC" | "SUMMARIZATION" | "USER_PREFERENCE" | "CUSTOM" | "EPISODIC"
	// Last update timestamp of the memory strategy
	UpdatedAt?: string
}

#SemanticOverride: {
	Consolidation?: #SemanticOverrideConsolidationConfigurationInput
	Extraction?: #SemanticOverrideExtractionConfigurationInput
}

#SemanticOverrideConsolidationConfigurationInput: {
	AppendToPrompt: #Prompt
	ModelId: string
}

#SemanticOverrideExtractionConfigurationInput: {
	AppendToPrompt: #Prompt
	ModelId: string
}

#StrategyConfiguration: {
	Consolidation?: #ConsolidationConfiguration
	Extraction?: #ExtractionConfiguration
	// Type of strategy configuration override
	Type?: "SEMANTIC_OVERRIDE" | "SUMMARY_OVERRIDE" | "USER_PREFERENCE_OVERRIDE" | "EPISODIC"
}

#StreamDeliveryResource: {
	Kinesis?: #KinesisResource
}

#StreamDeliveryResources: {
	Resources: [...#StreamDeliveryResource]
}

#StringListValidation: {
	AllowedValues?: [...string]
	MaxItems?: int & >=1 & <=5
}

#StringValidation: {
	AllowedValues: [...string]
}

#SummaryConsolidationOverride: {
	AppendToPrompt: #Prompt
	// ID of the model to use
	ModelId: string
}

#SummaryMemoryStrategy: {
	// Creation timestamp of the memory strategy
	CreatedAt?: string
	Description?: #Description
	MemoryRecordSchema?: #MemoryRecordSchema
	Name: #Name
	NamespaceTemplates?: #NamespacesList
	Namespaces?: #NamespacesList
	// Status of the memory strategy
	Status?: "CREATING" | "ACTIVE" | "DELETING" | "FAILED"
	// Unique identifier for the memory strategy
	StrategyId?: string & =~"^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$" & strings.MinRunes(12)
	// Type of memory strategy
	Type?: "SEMANTIC" | "SUMMARIZATION" | "USER_PREFERENCE" | "CUSTOM" | "EPISODIC"
	// Last update timestamp of the memory strategy
	UpdatedAt?: string
}

#SummaryOverride: {
	Consolidation?: #SummaryOverrideConsolidationConfigurationInput
}

#SummaryOverrideConsolidationConfigurationInput: {
	AppendToPrompt: #Prompt
	ModelId: string
}

#TimeBasedTriggerInput: {
	IdleSessionTimeout?: int & >=10 & <=3000
}

#TokenBasedTriggerInput: {
	TokenCount?: int & >=100 & <=500000
}

#TriggerConditionInput: {
	MessageBasedTrigger?: #MessageBasedTriggerInput
	TimeBasedTrigger?: #TimeBasedTriggerInput
	TokenBasedTrigger?: #TokenBasedTriggerInput
}

#UserPreferenceConsolidationOverride: {
	AppendToPrompt: #Prompt
	// ID of the model to use
	ModelId: string
}

#UserPreferenceExtractionOverride: {
	AppendToPrompt: #Prompt
	// ID of the model to use
	ModelId: string
}

#UserPreferenceMemoryStrategy: {
	// Creation timestamp of the memory strategy
	CreatedAt?: string
	Description?: #Description
	MemoryRecordSchema?: #MemoryRecordSchema
	Name: #Name
	NamespaceTemplates?: #NamespacesList
	Namespaces?: #NamespacesList
	// Status of the memory strategy
	Status?: "CREATING" | "ACTIVE" | "DELETING" | "FAILED"
	// Unique identifier for the memory strategy
	StrategyId?: string & =~"^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$" & strings.MinRunes(12)
	// Type of memory strategy
	Type?: "SEMANTIC" | "SUMMARIZATION" | "USER_PREFERENCE" | "CUSTOM" | "EPISODIC"
	// Last update timestamp of the memory strategy
	UpdatedAt?: string
}

#UserPreferenceOverride: {
	Consolidation?: #UserPreferenceOverrideConsolidationConfigurationInput
	Extraction?: #UserPreferenceOverrideExtractionConfigurationInput
}

#UserPreferenceOverrideConsolidationConfigurationInput: {
	AppendToPrompt: #Prompt
	ModelId: string
}

#UserPreferenceOverrideExtractionConfigurationInput: {
	AppendToPrompt: #Prompt
	ModelId: string
}

#Validation: {
	NumberValidation?: #NumberValidation
	StringListValidation?: #StringListValidation
	StringValidation?: #StringValidation
}
