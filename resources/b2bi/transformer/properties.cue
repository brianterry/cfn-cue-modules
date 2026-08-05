package transformer

import "strings"

#Properties: {
	EdiType?: #EdiType
	FileFormat?: #FileFormat
	InputConversion?: #InputConversion
	Mapping?: #Mapping
	// This shape is deprecated: This is a legacy trait. Please use input-conversion or output-conversion.
	MappingTemplate?: string & strings.MinRunes(0) & strings.MaxRunes(350000)
	Name: string & =~"^[a-zA-Z0-9_-]{1,512}$" & strings.MinRunes(1) & strings.MaxRunes(254)
	OutputConversion?: #OutputConversion
	// This shape is deprecated: This is a legacy trait. Please use input-conversion or output-conversion.
	SampleDocument?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	SampleDocuments?: #SampleDocuments
	Status: #TransformerStatus
	Tags?: [...#Tag]
}

#AdvancedOptions: {
	X12?: #X12AdvancedOptions
}

#InputConversion: {
	AdvancedOptions?: #AdvancedOptions
	FormatOptions?: #FormatOptions
	FromFormat: #FromFormat
}

#Mapping: {
	Template?: string & strings.MinRunes(0) & strings.MaxRunes(350000)
	TemplateLanguage: #MappingTemplateLanguage
}

#OutputConversion: {
	AdvancedOptions?: #AdvancedOptions
	FormatOptions?: #FormatOptions
	ToFormat: #ToFormat
}

#SampleDocumentKeys: {
	Input?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Output?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#SampleDocuments: {
	BucketName: string & strings.MinRunes(3) & strings.MaxRunes(63)
	Keys: [...#SampleDocumentKeys]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#X12AdvancedOptions: {
	SplitOptions?: #X12SplitOptions
	ValidationOptions?: #X12ValidationOptions
}

#X12CodeListValidationRule: {
	CodesToAdd?: [...string]
	CodesToRemove?: [...string]
	ElementId: string & =~"^[0-9]{4}$" & strings.MinRunes(4) & strings.MaxRunes(4)
}

#X12Details: {
	TransactionSet?: #X12TransactionSet
	Version?: #X12Version
}

#X12ElementLengthValidationRule: {
	ElementId: string & =~"^[0-9]{4}$" & strings.MinRunes(4) & strings.MaxRunes(4)
	MaxLength: number & >=1 & <=1e+06
	MinLength: number & >=1 & <=1e+06
}

#X12ElementRequirementValidationRule: {
	ElementPosition: string & =~"^[a-zA-Z0-9]+(?:-\\d{2})(?:-\\d{2})?$"
	Requirement: #ElementRequirement
}

#X12SplitOptions: {
	SplitBy?: #X12SplitBy
}

#X12ValidationOptions: {
	ValidationRules?: [...#X12ValidationRule]
}
