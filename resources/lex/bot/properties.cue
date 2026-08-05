package bot

import "strings"

#Properties: {
	AutoBuildBotLocales?: bool
	BotFileS3Location?: #S3Location
	BotLocales?: [...#BotLocale]
	// The list of bot members in a network to be created.
	BotMembers?: [...#BotMember]
	BotTags?: [...#Tag]
	// The type of a bot to create.
	BotType?: "Bot" | "BotNetwork"
	DataPrivacy: {
		ChildDirected: bool
	}
	Description?: #Description
	ErrorLogSettings?: {
		Enabled: bool
	}
	IdleSessionTTLInSeconds: int & >=60 & <=86400
	Name: #Name
	Replication?: #Replication
	RoleArn: #RoleArn
	TestBotAliasSettings?: #TestBotAliasSettings
	TestBotAliasTags?: [...#Tag]
}

#AdvancedRecognitionSetting: {
	AudioRecognitionStrategy?: #AudioRecognitionStrategy
}

#AllowedInputTypes: {
	AllowAudioInput: bool
	AllowDTMFInput: bool
}

#AttachmentTitle: string & strings.MinRunes(1) & strings.MaxRunes(250)

#AttachmentUrl: string & strings.MinRunes(1) & strings.MaxRunes(250)

#AudioAndDTMFInputSpecification: {
	AudioSpecification?: #AudioSpecification
	DTMFSpecification?: #DTMFSpecification
	StartTimeoutMs: int & >=1
}

#AudioFillerSettings: {
	AudioType?: "MELODY_CHIPPER_CHIME" | "MELODY_CURIOUS_CRAWL" | "MELODY_RISING_RIPPLE" | "MELODY_PATIENT_PING" | "MELODY_PONDERING_PONG" | "TYPING_KINETIC_KEYS" | "TYPING_QUIET_QWERTY"
	Enabled: bool
	MinimumPlayDurationInMilliseconds?: int & >=1000 & <=5000
	ResponseDeliveryDelayInMilliseconds?: int & >=200 & <=1000
	StartDelayInMilliseconds?: int & >=500 & <=5000
}

#AudioLogDestination: {
	S3Bucket: #S3BucketLogDestination
}

#AudioLogSetting: {
	Destination: #AudioLogDestination
	Enabled: bool
}

#AudioLogSettings: [...#AudioLogSetting]

#AudioRecognitionStrategy: "UseSlotValuesAsCustomVocabulary"

#AudioSpecification: {
	EndTimeoutMs: int & >=1
	MaxLengthMs: int & >=1
}

#BedrockAgentIntentConfiguration: {
	BedrockAgentConfiguration?: {
		BedrockAgentAliasId?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
		BedrockAgentId?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
	}
	BedrockAgentIntentKnowledgeBaseConfiguration?: {
		BedrockKnowledgeBaseArn: string & strings.MinRunes(1) & strings.MaxRunes(5000)
		BedrockModelConfiguration: #BedrockModelSpecification
	}
}

#BedrockModelSpecification: {
	BedrockGuardrailConfiguration?: {
		BedrockGuardrailIdentifier?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
		BedrockGuardrailVersion?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
	}
	BedrockModelCustomPrompt?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
	BedrockTraceStatus?: "ENABLED" | "DISABLED"
	ModelArn: string & strings.MinRunes(1) & strings.MaxRunes(5000)
}

#BotAliasLocaleSettings: {
	CodeHookSpecification?: #CodeHookSpecification
	Enabled: bool
}

#BotAliasLocaleSettingsItem: {
	BotAliasLocaleSetting: #BotAliasLocaleSettings
	LocaleId: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#BotAliasLocaleSettingsList: [...#BotAliasLocaleSettingsItem]

#BotArn: string & =~"^arn:aws[a-zA-Z-]*:lex:[a-z]+-(?:[a-z]+-)*[0-9]:[0-9]{12}:bot/[0-9a-zA-Z]+$" & strings.MinRunes(1) & strings.MaxRunes(1011)

#BotLocale: {
	AudioFillerSettings?: #AudioFillerSettings
	CustomVocabulary?: #CustomVocabulary
	Description?: #Description
	GenerativeAISettings?: #GenerativeAISettings
	Intents?: [...#Intent]
	LocaleId: #LocaleId
	NluConfidenceThreshold: #ConfidenceThreshold
	SlotTypes?: [...#SlotType]
	SpeechDetectionSensitivity?: #SpeechDetectionSensitivity
	SpeechRecognitionSettings?: #SpeechRecognitionSettings
	UnifiedSpeechSettings?: #UnifiedSpeechSettings
	VoiceSettings?: #VoiceSettings
}

#BotMember: {
	// The alias ID of a bot that is a member of this network of bots.
	BotMemberAliasId: string & strings.MinRunes(10) & strings.MaxRunes(10)
	// The alias name of a bot that is a member of this network of bots.
	BotMemberAliasName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The unique ID of a bot that is a member of this network of bots.
	BotMemberId: string & strings.MinRunes(10) & strings.MaxRunes(10)
	// The unique name of a bot that is a member of this network of bots.
	BotMemberName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The version of a bot that is a member of this network of bots.
	BotMemberVersion: string & strings.MinRunes(1) & strings.MaxRunes(5)
}

#Button: {
	Text: string & strings.MinRunes(1) & strings.MaxRunes(50)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(50)
}

#CloudWatchLogGroupLogDestination: {
	CloudWatchLogGroupArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	LogPrefix: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#CodeHookSpecification: {
	LambdaCodeHook: #LambdaCodeHook
}

#CompositeSlotTypeSetting: {
	SubSlots?: [...#SubSlotTypeComposition]
}

#Condition: {
	ExpressionString: #ConditionExpression
}

#ConditionExpression: string & strings.MinRunes(1) & strings.MaxRunes(1024)

#Conditional: {
	ConditionalBranches: #ConditionalBranches
	IsActive: bool
}

#ConditionalBranch: {
	Condition: #Condition
	Name: #Name
	NextStep: #DialogState
	Response?: #ResponseSpecification
}

#ConditionalBranches: [...#ConditionalBranch]

#ConditionalSpecification: {
	ConditionalBranches: #ConditionalBranches
	DefaultBranch: #DefaultConditionalBranch
	IsActive: bool
}

#ConfidenceThreshold: number & >=0 & <=1

#ContextTimeToLiveInSeconds: int & >=5 & <=86400

#ContextTurnsToLive: int & >=1 & <=20

#ConversationLogSettings: {
	AudioLogSettings?: #AudioLogSettings
	TextLogSettings?: #TextLogSettings
}

#CustomPayload: {
	Value: string & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#CustomVocabulary: {
	CustomVocabularyItems: #CustomVocabularyItems
}

#CustomVocabularyItem: {
	DisplayAs?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	Phrase: string & strings.MinRunes(1) & strings.MaxRunes(100)
	Weight?: int & >=0 & <=3
}

#CustomVocabularyItems: [...#CustomVocabularyItem]

#DTMFSpecification: {
	DeletionCharacter: string & =~"^[A-D0-9#*]{1}$"
	EndCharacter: string & =~"^[A-D0-9#*]{1}$"
	EndTimeoutMs: int & >=1
	MaxLength: int & >=1 & <=1024
}

#DataPrivacy: {
	ChildDirected: bool
}

#DeepgramModelId: string & =~"[A-Za-z0-9-_]+" & strings.MinRunes(4) & strings.MaxRunes(32)

#DeepgramSpeechModelConfig: {
	ApiTokenSecretArn: #SecretsManagerSecretArn
	ModelId?: #DeepgramModelId
}

#DefaultConditionalBranch: {
	NextStep?: #DialogState
	Response?: #ResponseSpecification
}

#Description: string & strings.MaxRunes(2000)

#DialogAction: {
	SlotToElicit?: #Name
	SuppressNextMessage?: bool
	Type: #DialogActionType
}

#DialogActionType: "CloseIntent" | "ConfirmIntent" | "ElicitIntent" | "ElicitSlot" | "StartIntent" | "FulfillIntent" | "EndConversation" | "EvaluateConditional" | "InvokeDialogCodeHook"

#DialogCodeHookInvocationSetting: {
	EnableCodeHookInvocation: bool
	InvocationLabel?: #Name
	IsActive: bool
	PostCodeHookSpecification: #PostDialogCodeHookInvocationSpecification
}

#DialogCodeHookSetting: {
	Enabled: bool
}

#DialogState: {
	DialogAction?: #DialogAction
	Intent?: #IntentOverride
	SessionAttributes?: [...#SessionAttribute]
}

#DisplayName: string & strings.MinRunes(1) & strings.MaxRunes(100)

#ElicitationCodeHookInvocationSetting: {
	EnableCodeHookInvocation: bool
	InvocationLabel?: #Name
}

#ErrorLogSettings: {
	// Specify whether error log feature has been enabled
	Enabled: bool
}

#ExternalSourceSetting: {
	GrammarSlotTypeSetting?: #GrammarSlotTypeSetting
}

#FulfillmentCodeHookSetting: {
	Enabled: bool
	FulfillmentUpdatesSpecification?: #FulfillmentUpdatesSpecification
	IsActive?: bool
	PostFulfillmentStatusSpecification?: #PostFulfillmentStatusSpecification
}

#FulfillmentStartResponseSpecification: {
	AllowInterrupt?: bool
	DelayInSeconds: int & >=1 & <=900
	MessageGroups: #MessageGroupsList
}

#FulfillmentUpdateResponseSpecification: {
	AllowInterrupt?: bool
	FrequencyInSeconds: int & >=1 & <=900
	MessageGroups: #MessageGroupsList
}

#FulfillmentUpdatesSpecification: {
	Active: bool
	StartResponse?: #FulfillmentStartResponseSpecification
	TimeoutInSeconds?: int & >=1 & <=900
	UpdateResponse?: #FulfillmentUpdateResponseSpecification
}

#GenerativeAISettings: {
	BuildtimeSettings?: {
		DescriptiveBotBuilderSpecification?: {
			BedrockModelSpecification?: #BedrockModelSpecification
			Enabled: bool
		}
		SampleUtteranceGenerationSpecification?: {
			BedrockModelSpecification?: #BedrockModelSpecification
			Enabled: bool
		}
	}
	RuntimeSettings?: {
		NluImprovementSpecification?: {
			AssistedNluMode?: "Primary" | "Fallback"
			Enabled: bool
			IntentDisambiguationSettings?: #IntentDisambiguationSettings
		}
		SlotResolutionImprovementSpecification?: {
			BedrockModelSpecification?: #BedrockModelSpecification
			Enabled: bool
		}
	}
}

#GrammarSlotTypeSetting: {
	Source?: #GrammarSlotTypeSource
}

#GrammarSlotTypeSource: {
	KmsKeyArn?: string & =~"^arn:[\\w\\-]+:kms:[\\w\\-]+:[\\d]{12}:(?:key\\/[\\w\\-]+|alias\\/[a-zA-Z0-9:\\/_\\-]{1,256})$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	S3BucketName: #S3BucketName
	S3ObjectKey: #S3ObjectKey
}

#Id: string & =~"^[0-9a-zA-Z]+$" & strings.MinRunes(10) & strings.MaxRunes(10)

#IdleSessionTTLInSeconds: int & >=60 & <=86400

#ImageResponseCard: {
	Buttons?: [...#Button]
	ImageUrl?: #AttachmentUrl
	Subtitle?: #AttachmentTitle
	Title: #AttachmentTitle
}

#InitialResponseSetting: {
	CodeHook?: #DialogCodeHookInvocationSetting
	Conditional?: #ConditionalSpecification
	InitialResponse?: #ResponseSpecification
	NextStep?: #DialogState
}

#InputContext: {
	Name: #Name
}

#InputContextsList: [...#InputContext]

#Intent: {
	BedrockAgentIntentConfiguration?: #BedrockAgentIntentConfiguration
	// Resource Type definition for the intent.
	Description?: #Description
	DialogCodeHook?: #DialogCodeHookSetting
	DisplayName?: #DisplayName
	FulfillmentCodeHook?: #FulfillmentCodeHookSetting
	InitialResponseSetting?: #InitialResponseSetting
	InputContexts?: #InputContextsList
	IntentClosingSetting?: #IntentClosingSetting
	IntentConfirmationSetting?: #IntentConfirmationSetting
	KendraConfiguration?: #KendraConfiguration
	Name: #Name
	OutputContexts?: #OutputContextsList
	ParentIntentSignature?: #ParentIntentSignature
	QInConnectIntentConfiguration?: #QInConnectIntentConfiguration
	QnAIntentConfiguration?: #QnAIntentConfiguration
	SampleUtterances?: #SampleUtterancesList
	SlotPriorities?: #SlotPrioritiesList
	Slots?: [...#Slot]
}

#IntentClosingSetting: {
	ClosingResponse?: #ResponseSpecification
	Conditional?: #ConditionalSpecification
	IsActive?: bool
	NextStep?: #DialogState
}

#IntentConfirmationSetting: {
	CodeHook?: #DialogCodeHookInvocationSetting
	ConfirmationConditional?: #ConditionalSpecification
	ConfirmationNextStep?: #DialogState
	ConfirmationResponse?: #ResponseSpecification
	DeclinationConditional?: #ConditionalSpecification
	DeclinationNextStep?: #DialogState
	DeclinationResponse?: #ResponseSpecification
	ElicitationCodeHook?: #ElicitationCodeHookInvocationSetting
	FailureConditional?: #ConditionalSpecification
	FailureNextStep?: #DialogState
	FailureResponse?: #ResponseSpecification
	IsActive?: bool
	PromptSpecification: #PromptSpecification
}

#IntentDisambiguationSettings: {
	CustomDisambiguationMessage?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	Enabled: bool
	MaxDisambiguationIntents?: int & >=2 & <=5
}

#IntentOverride: {
	Name?: #Name
	Slots?: [...#SlotValueOverrideMap]
}

#KendraConfiguration: {
	KendraIndex: #KendraIndexArn
	QueryFilterString?: #QueryFilterString
	QueryFilterStringEnabled?: bool
}

#KendraIndexArn: string & =~"^arn:aws[a-zA-Z-]*:kendra:[a-z]+-(?:[a-z]+-)*[0-9]:[0-9]{12}:index/[a-zA-Z0-9][a-zA-Z0-9_-]*$" & strings.MinRunes(32) & strings.MaxRunes(2048)

#LambdaCodeHook: {
	CodeHookInterfaceVersion: string & strings.MinRunes(1) & strings.MaxRunes(5)
	LambdaArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#LocaleId: string

#Message: {
	CustomPayload?: #CustomPayload
	ImageResponseCard?: #ImageResponseCard
	PlainTextMessage?: #PlainTextMessage
	SSMLMessage?: #SSMLMessage
}

#MessageGroup: {
	Message: #Message
	Variations?: [...#Message]
}

#MessageGroupsList: [...#MessageGroup]

#MessageSelectionStrategy: "Random" | "Ordered"

#MultipleValuesSetting: {
	AllowMultipleValues?: bool
}

#Name: string & =~"^([0-9a-zA-Z][_-]?)+$" & strings.MinRunes(1) & strings.MaxRunes(100)

#ObfuscationSetting: {
	ObfuscationSettingType: "None" | "DefaultObfuscation"
}

#OutputContext: {
	Name: #Name
	TimeToLiveInSeconds: #ContextTimeToLiveInSeconds
	TurnsToLive: #ContextTurnsToLive
}

#OutputContextsList: [...#OutputContext]

#ParentIntentSignature: string

#ParentSlotTypeSignature: string

#PlainTextMessage: {
	Value: string & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#PostDialogCodeHookInvocationSpecification: {
	FailureConditional?: #ConditionalSpecification
	FailureNextStep?: #DialogState
	FailureResponse?: #ResponseSpecification
	SuccessConditional?: #ConditionalSpecification
	SuccessNextStep?: #DialogState
	SuccessResponse?: #ResponseSpecification
	TimeoutConditional?: #ConditionalSpecification
	TimeoutNextStep?: #DialogState
	TimeoutResponse?: #ResponseSpecification
}

#PostFulfillmentStatusSpecification: {
	FailureConditional?: #ConditionalSpecification
	FailureNextStep?: #DialogState
	FailureResponse?: #ResponseSpecification
	SuccessConditional?: #ConditionalSpecification
	SuccessNextStep?: #DialogState
	SuccessResponse?: #ResponseSpecification
	TimeoutConditional?: #ConditionalSpecification
	TimeoutNextStep?: #DialogState
	TimeoutResponse?: #ResponseSpecification
}

#PriorityValue: int & >=0 & <=100

#PromptAttemptSpecification: {
	AllowInterrupt?: bool
	AllowedInputTypes: #AllowedInputTypes
	AudioAndDTMFInputSpecification?: #AudioAndDTMFInputSpecification
	TextInputSpecification?: #TextInputSpecification
}

#PromptMaxRetries: int & >=0 & <=5

#PromptSpecification: {
	AllowInterrupt?: bool
	MaxRetries: #PromptMaxRetries
	MessageGroupsList: #MessageGroupsList
	MessageSelectionStrategy?: #MessageSelectionStrategy
	PromptAttemptsSpecification?: {...}
}

#QInConnectIntentConfiguration: {
	QInConnectAssistantConfiguration?: {
		AssistantArn: string & =~"^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$" & strings.MinRunes(1) & strings.MaxRunes(200)
	}
}

#QnAIntentConfiguration: {
	BedrockModelConfiguration: #BedrockModelSpecification
	DataSourceConfiguration: {
		BedrockKnowledgeStoreConfiguration?: {
			BKBExactResponseFields?: {
				AnswerField?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
			}
			BedrockKnowledgeBaseArn?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
			ExactResponse?: bool
		}
		KendraConfiguration?: #QnAKendraConfiguration
		OpensearchConfiguration?: {
			DomainEndpoint?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
			ExactResponse?: bool
			ExactResponseFields?: {
				AnswerField?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
				QuestionField?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
			}
			IncludeFields?: [...string & strings.MinRunes(1) & strings.MaxRunes(5000)]
			IndexName?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
		}
	}
}

#QnAKendraConfiguration: {
	ExactResponse: bool
	KendraIndex: string & strings.MinRunes(1) & strings.MaxRunes(5000)
	QueryFilterString?: string & strings.MinRunes(1) & strings.MaxRunes(5000)
	QueryFilterStringEnabled: bool
}

#QueryFilterString: string & strings.MinRunes(1) & strings.MaxRunes(5000)

#ReplicaRegion: string & strings.MinRunes(2) & strings.MaxRunes(25)

#Replication: {
	ReplicaRegions: [...#ReplicaRegion]
}

#ResponseSpecification: {
	AllowInterrupt?: bool
	MessageGroupsList: #MessageGroupsList
}

#RoleArn: string & =~"^arn:aws[a-zA-Z-]*:iam::[0-9]{12}:role/.*$" & strings.MinRunes(32) & strings.MaxRunes(2048)

#S3BucketLogDestination: {
	KmsKeyArn?: string & =~"^arn:[\\w\\-]+:kms:[\\w\\-]+:[\\d]{12}:(?:key\\/[\\w\\-]+|alias\\/[a-zA-Z0-9:\\/_\\-]{1,256})$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	LogPrefix: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	S3BucketArn: string & =~"^arn:[\\w\\-]+:s3:::[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#S3BucketName: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(63)

#S3Location: {
	S3Bucket: #S3BucketName
	S3ObjectKey: #S3ObjectKey
	S3ObjectVersion?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#S3ObjectKey: string & =~"[\\.\\-\\!\\*\\_\\'\\(\\)a-zA-Z0-9][\\.\\-\\!\\*\\_\\'\\(\\)\\/a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(1024)

#SSMLMessage: {
	Value: string & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#SampleUtterance: {
	Utterance: #Utterance
}

#SampleUtterancesList: [...#SampleUtterance]

#SampleValue: {
	Value: string & strings.MinRunes(1) & strings.MaxRunes(140)
}

#SecretsManagerSecretArn: string & =~"^arn:aws[A-Za-z-]*:secretsmanager:[a-z0-9-]{1,20}:[0-9]{12}:secret:[A-Za-z0-9/_+=.@-]{1,512}-[A-Za-z0-9]{6}$" & strings.MinRunes(20) & strings.MaxRunes(2048)

#SessionAttribute: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#Slot: {
	Description?: #Description
	MultipleValuesSetting?: #MultipleValuesSetting
	Name: #Name
	ObfuscationSetting?: #ObfuscationSetting
	SlotTypeName: #SlotTypeName
	SubSlotSetting?: #SubSlotSetting
	ValueElicitationSetting: #SlotValueElicitationSetting
}

#SlotCaptureSetting: {
	CaptureConditional?: #ConditionalSpecification
	CaptureNextStep?: #DialogState
	CaptureResponse?: #ResponseSpecification
	CodeHook?: #DialogCodeHookInvocationSetting
	ElicitationCodeHook?: #ElicitationCodeHookInvocationSetting
	FailureConditional?: #ConditionalSpecification
	FailureNextStep?: #DialogState
	FailureResponse?: #ResponseSpecification
}

#SlotConstraint: "Required" | "Optional"

#SlotDefaultValue: {
	DefaultValue: string & strings.MinRunes(1) & strings.MaxRunes(202)
}

#SlotDefaultValueSpecification: {
	DefaultValueList: [...#SlotDefaultValue]
}

#SlotPrioritiesList: [...#SlotPriority]

#SlotPriority: {
	Priority: #PriorityValue
	SlotName: #Name
}

#SlotShape: "Scalar" | "List"

#SlotType: {
	CompositeSlotTypeSetting?: #CompositeSlotTypeSetting
	Description?: #Description
	ExternalSourceSetting?: #ExternalSourceSetting
	Name: #Name
	ParentSlotTypeSignature?: #ParentSlotTypeSignature
	SlotTypeValues?: #SlotTypeValues
	ValueSelectionSetting?: #SlotValueSelectionSetting
}

#SlotTypeId: string & =~"^((AMAZON\\.)[a-zA-Z_]+?|[0-9a-zA-Z]+)$" & strings.MinRunes(1) & strings.MaxRunes(25)

#SlotTypeName: string

#SlotTypeValue: {
	SampleValue: #SampleValue
	Synonyms?: #SynonymList
}

#SlotTypeValues: [...#SlotTypeValue]

#SlotValue: {
	InterpretedValue?: string & strings.MinRunes(1) & strings.MaxRunes(202)
}

#SlotValueElicitationSetting: {
	DefaultValueSpecification?: #SlotDefaultValueSpecification
	PromptSpecification?: #PromptSpecification
	SampleUtterances?: #SampleUtterancesList
	SlotCaptureSetting?: #SlotCaptureSetting
	SlotConstraint: #SlotConstraint
	WaitAndContinueSpecification?: #WaitAndContinueSpecification
}

#SlotValueOverride: {
	Shape?: #SlotShape
	Value?: #SlotValue
	Values?: #SlotValues
}

#SlotValueOverrideMap: {
	SlotName?: #Name
	SlotValueOverride?: #SlotValueOverride
}

#SlotValueRegexFilter: {
	Pattern: string & strings.MinRunes(1) & strings.MaxRunes(300)
}

#SlotValueResolutionStrategy: "ORIGINAL_VALUE" | "TOP_RESOLUTION" | "CONCATENATION"

#SlotValueSelectionSetting: {
	AdvancedRecognitionSetting?: #AdvancedRecognitionSetting
	RegexFilter?: #SlotValueRegexFilter
	ResolutionStrategy: #SlotValueResolutionStrategy
}

#SlotValues: [...#SlotValueOverride]

#Specifications: {
	SlotTypeId?: #SlotTypeId
	SlotTypeName?: #SlotTypeName
	ValueElicitationSetting: #SubSlotValueElicitationSetting
}

#SpeechDetectionSensitivity: "Default" | "HighNoiseTolerance" | "MaximumNoiseTolerance"

#SpeechModelConfig: {
	DeepgramConfig?: #DeepgramSpeechModelConfig
}

#SpeechModelPreference: "Standard" | "Neural" | "Deepgram" | "Advanced"

#SpeechRecognitionSettings: {
	SpeechModelConfig?: #SpeechModelConfig
	SpeechModelPreference?: #SpeechModelPreference
}

#StillWaitingResponseFrequency: int & >=1 & <=300

#StillWaitingResponseSpecification: {
	AllowInterrupt?: bool
	FrequencyInSeconds: #StillWaitingResponseFrequency
	MessageGroupsList: #MessageGroupsList
	TimeoutInSeconds: #StillWaitingResponseTimeout
}

#StillWaitingResponseTimeout: int & >=1 & <=900

#SubSlotSetting: {
	Expression?: string & =~"[0-9A-Za-z_\\-\\s\\(\\)]+" & strings.MinRunes(1) & strings.MaxRunes(1000)
	SlotSpecifications?: {...}
}

#SubSlotTypeComposition: {
	Name: string & =~"^([0-9a-zA-Z][_-]?){1,100}$" & strings.MinRunes(1) & strings.MaxRunes(100)
	SlotTypeId?: #SlotTypeId
	SlotTypeName?: #SlotTypeName
}

#SubSlotValueElicitationSetting: {
	DefaultValueSpecification?: #SlotDefaultValueSpecification
	PromptSpecification?: #PromptSpecification
	SampleUtterances?: #SampleUtterancesList
	WaitAndContinueSpecification?: #WaitAndContinueSpecification
}

#SynonymList: [...#SampleValue]

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TestBotAliasSettings: {
	BotAliasLocaleSettings?: #BotAliasLocaleSettingsList
	ConversationLogSettings?: #ConversationLogSettings
	Description?: #Description
	SentimentAnalysisSettings?: {
		DetectSentiment: bool
	}
}

#TextInputSpecification: {
	StartTimeoutMs: int & >=1
}

#TextLogDestination: {
	CloudWatch: #CloudWatchLogGroupLogDestination
}

#TextLogSetting: {
	Destination: #TextLogDestination
	Enabled: bool
}

#TextLogSettings: [...#TextLogSetting]

#UnifiedSpeechSettings: {
	SpeechFoundationModel: {
		ModelArn: string
		VoiceId?: string
	}
}

#Utterance: string

#VoiceSettings: {
	Engine?: "standard" | "neural" | "long-form" | "generative"
	VoiceId: string
}

#WaitAndContinueSpecification: {
	ContinueResponse: #ResponseSpecification
	IsActive?: bool
	StillWaitingResponse?: #StillWaitingResponseSpecification
	WaitingResponse: #ResponseSpecification
}
