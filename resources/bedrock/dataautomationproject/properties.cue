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

#AudioExtractionCategoryTypeConfiguration: {
	Transcript?: #TranscriptConfiguration
}

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

#ChannelLabelingConfiguration: {
	State: #State
}

#CustomOutputConfiguration: {
	Blueprints?: [...#BlueprintItem]
}

#DocumentBoundingBox: {
	State: #State
}

#DocumentExtractionGranularity: {
	Types?: [...#DocumentExtractionGranularityType]
}

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

#ImageStandardOutputConfiguration: {
	Extraction?: #ImageStandardExtraction
	GenerativeField?: #ImageStandardGenerativeField
}

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

#SensitiveDataConfiguration: {
	DetectionMode?: #SensitiveDataDetectionMode
	DetectionScope?: [...#SensitiveDataDetectionScope]
	PiiEntitiesConfiguration?: #PIIEntitiesConfiguration
}

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

#VideoBoundingBox: {
	State: #State
}

#VideoExtractionCategory: {
	State: #State
	Types?: [...#VideoExtractionCategoryType]
}

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

#VideoStandardOutputConfiguration: {
	Extraction?: #VideoStandardExtraction
	GenerativeField?: #VideoStandardGenerativeField
}
