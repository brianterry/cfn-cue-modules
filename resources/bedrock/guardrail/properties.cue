package guardrail

import "strings"

#Properties: {
	AutomatedReasoningPolicyConfig?: #AutomatedReasoningPolicyConfig
	// Messaging for when violations are detected in text
	BlockedInputMessaging: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// Messaging for when violations are detected in text
	BlockedOutputsMessaging: string & strings.MinRunes(1) & strings.MaxRunes(500)
	ContentPolicyConfig?: #ContentPolicyConfig
	ContextualGroundingPolicyConfig?: #ContextualGroundingPolicyConfig
	CrossRegionConfig?: #GuardrailCrossRegionConfig
	// Description of the guardrail or its version
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// The KMS key with which the guardrail was encrypted at rest
	KmsKeyArn?: string & =~"^arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Name of the guardrail
	Name: string & =~"^[0-9a-zA-Z-_]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	SensitiveInformationPolicyConfig?: #SensitiveInformationPolicyConfig
	// List of Tags
	Tags?: [...#Tag]
	TopicPolicyConfig?: #TopicPolicyConfig
	WordPolicyConfig?: #WordPolicyConfig
}

#AutomatedReasoningPolicyConfig: {
	// The confidence threshold for triggering guardrail actions based on Automated Reasoning policy violations.
	ConfidenceThreshold?: number & >=0 & <=1
	// The list of Automated Reasoning policy ARNs to include in the guardrail configuration
	Policies: [...string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:automated-reasoning-policy\\/[a-z0-9]{12}(:([1-9][0-9]{0,11}))?$" & strings.MinRunes(15) & strings.MaxRunes(2048)]
}

#ContentFilterConfig: {
	InputAction?: #ContentFilterAction
	InputEnabled?: bool
	// List of modalities
	InputModalities?: [...#Modality]
	InputStrength: #FilterStrength
	OutputAction?: #ContentFilterAction
	OutputEnabled?: bool
	// List of modalities
	OutputModalities?: [...#Modality]
	OutputStrength: #FilterStrength
	Type: #ContentFilterType
}

#ContentPolicyConfig: {
	// Guardrail tier config for content policy
	ContentFiltersTierConfig?: {
		TierName: #ContentFiltersTierName
	}
	// List of content filter configs in content policy.
	FiltersConfig: [...#ContentFilterConfig]
}

#ContextualGroundingFilterConfig: {
	Action?: #ContextualGroundingAction
	Enabled?: bool
	// The threshold for this filter.
	Threshold: number & >=0
	Type: #ContextualGroundingFilterType
}

#ContextualGroundingPolicyConfig: {
	// List of contextual grounding filter configs.
	FiltersConfig: [...#ContextualGroundingFilterConfig]
}

#GuardrailCrossRegionConfig: {
	// The Amazon Resource Name (ARN) of the guardrail profile
	GuardrailProfileArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail-profile/[a-z0-9-]+[.]{1}guardrail[.]{1}v[0-9:]+$" & strings.MinRunes(15) & strings.MaxRunes(2048)
}

#ManagedWordsConfig: {
	InputAction?: #WordAction
	InputEnabled?: bool
	OutputAction?: #WordAction
	OutputEnabled?: bool
	Type: #ManagedWordsType
}

#PiiEntityConfig: {
	Action: #SensitiveInformationAction
	InputAction?: #SensitiveInformationAction
	InputEnabled?: bool
	OutputAction?: #SensitiveInformationAction
	OutputEnabled?: bool
	Type: #PiiEntityType
}

#RegexConfig: {
	Action: #SensitiveInformationAction
	// The regex description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	InputAction?: #SensitiveInformationAction
	InputEnabled?: bool
	// The regex name.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
	OutputAction?: #SensitiveInformationAction
	OutputEnabled?: bool
	// The regex pattern.
	Pattern: string & strings.MinRunes(1)
}

#SensitiveInformationPolicyConfig: {
	// List of entities.
	PiiEntitiesConfig?: [...#PiiEntityConfig]
	// List of regex.
	RegexesConfig?: [...#RegexConfig]
}

#Tag: {
	// Tag Key
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag Value
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TopicConfig: {
	// Definition of topic in topic policy
	Definition: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// List of text examples
	Examples?: [...string & strings.MinRunes(1) & strings.MaxRunes(100)]
	InputAction?: #TopicAction
	InputEnabled?: bool
	// Name of topic in topic policy
	Name: string & =~"^[0-9a-zA-Z-_ !?.]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	OutputAction?: #TopicAction
	OutputEnabled?: bool
	Type: #TopicType
}

#TopicPolicyConfig: {
	// List of topic configs in topic policy.
	TopicsConfig: [...#TopicConfig]
	// Guardrail tier config for topic policy
	TopicsTierConfig?: {
		TierName: #TopicsTierName
	}
}

#WordConfig: {
	InputAction?: #WordAction
	InputEnabled?: bool
	OutputAction?: #WordAction
	OutputEnabled?: bool
	// The custom word text.
	Text: string & strings.MinRunes(1)
}

#WordPolicyConfig: {
	// A config for the list of managed words.
	ManagedWordListsConfig?: [...#ManagedWordsConfig]
	// List of custom word configs.
	WordsConfig?: [...#WordConfig]
}
