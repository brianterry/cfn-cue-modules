package dataautomationproject

import "strings"

#Properties: {
	CustomOutputConfiguration?: #CustomOutputConfiguration
	// KMS encryption context
	KmsEncryptionContext?: {...}
	// KMS key identifier
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	OverrideConfiguration?: #OverrideConfiguration
	// Description of the DataAutomationProject
	ProjectDescription?: string
	// Name of the DataAutomationProject
	ProjectName: string & =~"^[a-zA-Z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Type of the DataAutomationProject - Sync or Async
	ProjectType?: "ASYNC" | "SYNC"
	StandardOutputConfiguration?: #StandardOutputConfiguration
	// List of Tags
	Tags?: [...#Tag]
}

#AudioExtractionCategory: {
	State: #State
	TypeConfiguration?: #AudioExtractionCategoryTypeConfiguration
	Types?: [...#AudioExtractionCategoryType]
}

#AudioExtractionCategoryType: "AUDIO_CONTENT_MODERATION" | "TRANSCRIPT" | "TOPIC_CONTENT_MODERATION"

#AudioExtractionCategoryTypeConfiguration: {
	Transcript?: #TranscriptConfiguration
}

#AudioGenerativeOutputLanguage: "DEFAULT" | "EN"

#AudioLanguageConfiguration: {
	GenerativeOutputLanguage?: #AudioGenerativeOutputLanguage
	IdentifyMultipleLanguages?: bool
	InputLanguages?: [...#Language]
}

#AudioOverrideConfiguration: {
	LanguageConfiguration?: #AudioLanguageConfiguration
	ModalityProcessing?: #ModalityProcessingConfiguration
	SensitiveDataConfiguration?: #SensitiveDataConfiguration
}

#AudioStandardExtraction: {
	Category: #AudioExtractionCategory
}

#AudioStandardGenerativeField: {
	State: #State
	Types?: [...#AudioStandardGenerativeFieldType]
}

#AudioStandardGenerativeFieldType: "AUDIO_SUMMARY" | "IAB" | "TOPIC_SUMMARY"

#AudioStandardOutputConfiguration: {
	Extraction?: #AudioStandardExtraction
	GenerativeField?: #AudioStandardGenerativeField
}

#BlueprintItem: {
	// ARN of a Blueprint
	BlueprintArn: string & =~"^arn:aws(|-cn|-us-gov|-iso|-iso-[a-z]):bedrock:[a-zA-Z0-9-]*:(aws|[0-9]{12}):blueprint/(bedrock-data-automation-public-[a-zA-Z0-9-_]{1,30}|[a-zA-Z0-9-]{12,36})$" & strings.MaxRunes(128)
	BlueprintStage?: #BlueprintStage
	// Blueprint Version
	BlueprintVersion?: string & =~"^[0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#BlueprintStage: "DEVELOPMENT" | "LIVE"

#ChannelLabelingConfiguration: {
	State: #State
}

#CustomOutputConfiguration: {
	Blueprints?: [...#BlueprintItem]
}

#DataAutomationProjectStage: "DEVELOPMENT" | "LIVE"

#DataAutomationProjectStatus: "COMPLETED" | "IN_PROGRESS" | "FAILED"

#DesiredModality: "DOCUMENT" | "IMAGE" | "VIDEO" | "AUDIO"

#DocumentBoundingBox: {
	State: #State
}

#DocumentExtractionGranularity: {
	Types?: [...#DocumentExtractionGranularityType]
}

#DocumentExtractionGranularityType: "DOCUMENT" | "PAGE" | "ELEMENT" | "WORD" | "LINE"

#DocumentOutputAdditionalFileFormat: {
	State: #State
}

#DocumentOutputFormat: {
	AdditionalFileFormat: #DocumentOutputAdditionalFileFormat
	TextFormat: #DocumentOutputTextFormat
}

#DocumentOutputTextFormat: {
	Types?: [...#DocumentOutputTextFormatType]
}

#DocumentOutputTextFormatType: "PLAIN_TEXT" | "MARKDOWN" | "HTML" | "CSV"

#DocumentOverrideConfiguration: {
	ModalityProcessing?: #ModalityProcessingConfiguration
	SensitiveDataConfiguration?: #SensitiveDataConfiguration
	Splitter?: #SplitterConfiguration
}

#DocumentStandardExtraction: {
	BoundingBox: #DocumentBoundingBox
	Granularity: #DocumentExtractionGranularity
}

#DocumentStandardGenerativeField: {
	State: #State
}

#DocumentStandardOutputConfiguration: {
	Extraction?: #DocumentStandardExtraction
	GenerativeField?: #DocumentStandardGenerativeField
	OutputFormat?: #DocumentOutputFormat
}

#ImageBoundingBox: {
	State: #State
}

#ImageExtractionCategory: {
	State: #State
	Types?: [...#ImageExtractionCategoryType]
}

#ImageExtractionCategoryType: "CONTENT_MODERATION" | "TEXT_DETECTION" | "LOGOS"

#ImageOverrideConfiguration: {
	ModalityProcessing?: #ModalityProcessingConfiguration
	SensitiveDataConfiguration?: #SensitiveDataConfiguration
}

#ImageStandardExtraction: {
	BoundingBox: #ImageBoundingBox
	Category: #ImageExtractionCategory
}

#ImageStandardGenerativeField: {
	State: #State
	Types?: [...#ImageStandardGenerativeFieldType]
}

#ImageStandardGenerativeFieldType: "IMAGE_SUMMARY" | "IAB"

#ImageStandardOutputConfiguration: {
	Extraction?: #ImageStandardExtraction
	GenerativeField?: #ImageStandardGenerativeField
}

#Language: "EN" | "DE" | "ES" | "FR" | "IT" | "PT" | "JA" | "KO" | "CN" | "TW" | "HK"

#ModalityProcessingConfiguration: {
	State?: #State
}

#ModalityRoutingConfiguration: {
	jpeg?: #DesiredModality
	mov?: #DesiredModality
	mp4?: #DesiredModality
	png?: #DesiredModality
}

#OverrideConfiguration: {
	Audio?: #AudioOverrideConfiguration
	Document?: #DocumentOverrideConfiguration
	Image?: #ImageOverrideConfiguration
	ModalityRouting?: #ModalityRoutingConfiguration
	Video?: #VideoOverrideConfiguration
}

#PIIEntitiesConfiguration: {
	PiiEntityTypes?: [...#PIIEntityTypes]
	RedactionMaskMode?: #PIIRedactionMaskMode
}

#PIIEntityTypes: "ALL" | "ADDRESS" | "AGE" | "NAME" | "EMAIL" | "PHONE" | "USERNAME" | "PASSWORD" | "DRIVER_ID" | "LICENSE_PLATE" | "VEHICLE_IDENTIFICATION_NUMBER" | "CREDIT_DEBIT_CARD_CVV" | "CREDIT_DEBIT_CARD_EXPIRY" | "CREDIT_DEBIT_CARD_NUMBER" | "PIN" | "INTERNATIONAL_BANK_ACCOUNT_NUMBER" | "SWIFT_CODE" | "IP_ADDRESS" | "MAC_ADDRESS" | "URL" | "AWS_ACCESS_KEY" | "AWS_SECRET_KEY" | "US_BANK_ACCOUNT_NUMBER" | "US_BANK_ROUTING_NUMBER" | "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER" | "US_PASSPORT_NUMBER" | "US_SOCIAL_SECURITY_NUMBER" | "CA_HEALTH_NUMBER" | "CA_SOCIAL_INSURANCE_NUMBER" | "UK_NATIONAL_HEALTH_SERVICE_NUMBER" | "UK_NATIONAL_INSURANCE_NUMBER" | "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"

#PIIRedactionMaskMode: "PII" | "ENTITY_TYPE"

#SensitiveDataConfiguration: {
	DetectionMode?: #SensitiveDataDetectionMode
	DetectionScope?: [...#SensitiveDataDetectionScope]
	PiiEntitiesConfiguration?: #PIIEntitiesConfiguration
}

#SensitiveDataDetectionMode: "DETECTION" | "DETECTION_AND_REDACTION"

#SensitiveDataDetectionScope: "STANDARD" | "CUSTOM"

#SpeakerLabelingConfiguration: {
	State: #State
}

#SplitterConfiguration: {
	State?: #State
}

#StandardOutputConfiguration: {
	Audio?: #AudioStandardOutputConfiguration
	Document?: #DocumentStandardOutputConfiguration
	Image?: #ImageStandardOutputConfiguration
	Video?: #VideoStandardOutputConfiguration
}

#State: "ENABLED" | "DISABLED"

#Tag: {
	// Key for the tag
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Value for the tag
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TranscriptConfiguration: {
	ChannelLabeling?: #ChannelLabelingConfiguration
	SpeakerLabeling?: #SpeakerLabelingConfiguration
}

#Unit: {...}

#VideoBoundingBox: {
	State: #State
}

#VideoExtractionCategory: {
	State: #State
	Types?: [...#VideoExtractionCategoryType]
}

#VideoExtractionCategoryType: "CONTENT_MODERATION" | "TEXT_DETECTION" | "TRANSCRIPT" | "LOGOS"

#VideoOverrideConfiguration: {
	ModalityProcessing?: #ModalityProcessingConfiguration
	SensitiveDataConfiguration?: #SensitiveDataConfiguration
}

#VideoStandardExtraction: {
	BoundingBox: #VideoBoundingBox
	Category: #VideoExtractionCategory
}

#VideoStandardGenerativeField: {
	State: #State
	Types?: [...#VideoStandardGenerativeFieldType]
}

#VideoStandardGenerativeFieldType: "VIDEO_SUMMARY" | "IAB" | "CHAPTER_SUMMARY"

#VideoStandardOutputConfiguration: {
	Extraction?: #VideoStandardExtraction
	GenerativeField?: #VideoStandardGenerativeField
}
