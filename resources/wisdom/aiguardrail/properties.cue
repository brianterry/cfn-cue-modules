package aiguardrail

import "strings"

#Properties: {
	AssistantId: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$|^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"
	// Messaging for when violations are detected in text
	BlockedInputMessaging: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// Messaging for when violations are detected in text
	BlockedOutputsMessaging: string & strings.MinRunes(1) & strings.MaxRunes(500)
	ContentPolicyConfig?: #AIGuardrailContentPolicyConfig
	ContextualGroundingPolicyConfig?: #AIGuardrailContextualGroundingPolicyConfig
	// Description of the guardrail or its version
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	Name?: string & =~"^[a-zA-Z0-9\\s_.,-]+" & strings.MinRunes(1) & strings.MaxRunes(255)
	SensitiveInformationPolicyConfig?: #AIGuardrailSensitiveInformationPolicyConfig
	Tags?: #Tags
	TopicPolicyConfig?: #AIGuardrailTopicPolicyConfig
	WordPolicyConfig?: #AIGuardrailWordPolicyConfig
}

#AIGuardrailContentPolicyConfig: {
	// List of content filter configs in content policy.
	FiltersConfig: [...#GuardrailContentFilterConfig]
}

#AIGuardrailContextualGroundingPolicyConfig: {
	// List of contextual grounding filter configs.
	FiltersConfig: [...#GuardrailContextualGroundingFilterConfig]
}

#AIGuardrailSensitiveInformationPolicyConfig: {
	// List of entities.
	PiiEntitiesConfig?: [...#GuardrailPiiEntityConfig]
	// List of regex.
	RegexesConfig?: [...#GuardrailRegexConfig]
}

#AIGuardrailTopicPolicyConfig: {
	// List of topic configs in topic policy.
	TopicsConfig: [...#GuardrailTopicConfig]
}

#AIGuardrailWordPolicyConfig: {
	// A config for the list of managed words.
	ManagedWordListsConfig?: [...#GuardrailManagedWordsConfig]
	// List of custom word configs.
	WordsConfig?: [...#GuardrailWordConfig]
}

#GuardrailContentFilterConfig: {
	InputStrength: #GuardrailFilterStrength
	OutputStrength: #GuardrailFilterStrength
	Type: #GuardrailContentFilterType
}

#GuardrailContentFilterType: "SEXUAL" | "VIOLENCE" | "HATE" | "INSULTS" | "MISCONDUCT" | "PROMPT_ATTACK"

#GuardrailContextualGroundingFilterConfig: {
	// The threshold for this filter.
	Threshold: number & >=0
	Type: #GuardrailContextualGroundingFilterType
}

#GuardrailContextualGroundingFilterType: "GROUNDING" | "RELEVANCE"

#GuardrailFilterStrength: "NONE" | "LOW" | "MEDIUM" | "HIGH"

#GuardrailManagedWordsConfig: {
	Type: #GuardrailManagedWordsType
}

#GuardrailManagedWordsType: "PROFANITY"

#GuardrailPiiEntityConfig: {
	Action: #GuardrailSensitiveInformationAction
	Type: #GuardrailPiiEntityType
}

#GuardrailPiiEntityType: "ADDRESS" | "AGE" | "AWS_ACCESS_KEY" | "AWS_SECRET_KEY" | "CA_HEALTH_NUMBER" | "CA_SOCIAL_INSURANCE_NUMBER" | "CREDIT_DEBIT_CARD_CVV" | "CREDIT_DEBIT_CARD_EXPIRY" | "CREDIT_DEBIT_CARD_NUMBER" | "DRIVER_ID" | "EMAIL" | "INTERNATIONAL_BANK_ACCOUNT_NUMBER" | "IP_ADDRESS" | "LICENSE_PLATE" | "MAC_ADDRESS" | "NAME" | "PASSWORD" | "PHONE" | "PIN" | "SWIFT_CODE" | "UK_NATIONAL_HEALTH_SERVICE_NUMBER" | "UK_NATIONAL_INSURANCE_NUMBER" | "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER" | "URL" | "USERNAME" | "US_BANK_ACCOUNT_NUMBER" | "US_BANK_ROUTING_NUMBER" | "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER" | "US_PASSPORT_NUMBER" | "US_SOCIAL_SECURITY_NUMBER" | "VEHICLE_IDENTIFICATION_NUMBER"

#GuardrailRegexConfig: {
	Action: #GuardrailSensitiveInformationAction
	// The regex description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The regex name.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The regex pattern.
	Pattern: string & strings.MinRunes(1)
}

#GuardrailSensitiveInformationAction: "BLOCK" | "ANONYMIZE"

#GuardrailTopicConfig: {
	// Definition of topic in topic policy
	Definition: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// List of text examples
	Examples?: [...string & strings.MinRunes(1) & strings.MaxRunes(100)]
	// Name of topic in topic policy
	Name: string & =~"^[0-9a-zA-Z-_ !?.]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Type: #GuardrailTopicType
}

#GuardrailTopicType: "DENY"

#GuardrailWordConfig: {
	// The custom word text.
	Text: string & strings.MinRunes(1)
}

#Tags: {...}
