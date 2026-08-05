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

#ContentFilterAction: "BLOCK" | "NONE"

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

#ContentFilterType: "SEXUAL" | "VIOLENCE" | "HATE" | "INSULTS" | "MISCONDUCT" | "PROMPT_ATTACK"

#ContentFiltersTierName: "CLASSIC" | "STANDARD"

#ContentPolicyConfig: {
	// Guardrail tier config for content policy
	ContentFiltersTierConfig?: {
		TierName: #ContentFiltersTierName
	}
	// List of content filter configs in content policy.
	FiltersConfig: [...#ContentFilterConfig]
}

#ContextualGroundingAction: "BLOCK" | "NONE"

#ContextualGroundingFilterConfig: {
	Action?: #ContextualGroundingAction
	Enabled?: bool
	// The threshold for this filter.
	Threshold: number & >=0
	Type: #ContextualGroundingFilterType
}

#ContextualGroundingFilterType: "GROUNDING" | "RELEVANCE"

#ContextualGroundingPolicyConfig: {
	// List of contextual grounding filter configs.
	FiltersConfig: [...#ContextualGroundingFilterConfig]
}

#FilterStrength: "NONE" | "LOW" | "MEDIUM" | "HIGH"

#GuardrailCrossRegionConfig: {
	// The Amazon Resource Name (ARN) of the guardrail profile
	GuardrailProfileArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail-profile/[a-z0-9-]+[.]{1}guardrail[.]{1}v[0-9:]+$" & strings.MinRunes(15) & strings.MaxRunes(2048)
}

#GuardrailStatus: "CREATING" | "UPDATING" | "VERSIONING" | "READY" | "FAILED" | "DELETING"

#ManagedWordsConfig: {
	InputAction?: #WordAction
	InputEnabled?: bool
	OutputAction?: #WordAction
	OutputEnabled?: bool
	Type: #ManagedWordsType
}

#ManagedWordsType: "PROFANITY"

#Modality: "TEXT" | "IMAGE"

#PiiEntityConfig: {
	Action: #SensitiveInformationAction
	InputAction?: #SensitiveInformationAction
	InputEnabled?: bool
	OutputAction?: #SensitiveInformationAction
	OutputEnabled?: bool
	Type: #PiiEntityType
}

#PiiEntityType: "ADDRESS" | "AGE" | "AWS_ACCESS_KEY" | "AWS_SECRET_KEY" | "CA_HEALTH_NUMBER" | "CA_SOCIAL_INSURANCE_NUMBER" | "CREDIT_DEBIT_CARD_CVV" | "CREDIT_DEBIT_CARD_EXPIRY" | "CREDIT_DEBIT_CARD_NUMBER" | "DRIVER_ID" | "EMAIL" | "INTERNATIONAL_BANK_ACCOUNT_NUMBER" | "IP_ADDRESS" | "LICENSE_PLATE" | "MAC_ADDRESS" | "NAME" | "PASSWORD" | "PHONE" | "PIN" | "SWIFT_CODE" | "UK_NATIONAL_HEALTH_SERVICE_NUMBER" | "UK_NATIONAL_INSURANCE_NUMBER" | "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER" | "URL" | "USERNAME" | "US_BANK_ACCOUNT_NUMBER" | "US_BANK_ROUTING_NUMBER" | "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER" | "US_PASSPORT_NUMBER" | "US_SOCIAL_SECURITY_NUMBER" | "VEHICLE_IDENTIFICATION_NUMBER"

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

#SensitiveInformationAction: "BLOCK" | "ANONYMIZE" | "NONE"

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

#TopicAction: "BLOCK" | "NONE"

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

#TopicType: "DENY"

#TopicsTierName: "CLASSIC" | "STANDARD"

#WordAction: "BLOCK" | "NONE"

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
