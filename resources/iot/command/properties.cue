package command

import "strings"

#Properties: {
	// The unique identifier for the command.
	CommandId: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The date and time when the command was created.
	CreatedAt?: string
	// A flag indicating whether the command is deprecated.
	Deprecated?: bool
	// The description of the command.
	Description?: string & strings.MaxRunes(2028)
	// The display name for the command.
	DisplayName?: string
	// The date and time when the command was last updated.
	LastUpdatedAt?: string
	// The list of mandatory parameters for the command.
	MandatoryParameters?: #CommandParameterList
	// The namespace to which the command belongs.
	Namespace?: "AWS-IoT" | "AWS-IoT-FleetWise"
	// The payload associated with the command.
	Payload?: #CommandPayload
	// The payload template associated with the command.
	PayloadTemplate?: string & strings.MaxRunes(32768)
	// A flag indicating whether the command is pending deletion.
	PendingDeletion?: bool
	// The command preprocessor configuration.
	Preprocessor?: #CommandPreprocessor
	// The customer role associated with the command.
	RoleArn?: string & strings.MinRunes(20) & strings.MaxRunes(2028)
	// The tags to be associated with the command.
	Tags?: [...#Tag]
}

#AwsJsonSubstitutionCommandPreprocessorConfig: {
	OutputFormat: #OutputFormat
}

#CommandParameter: {
	DefaultValue?: #CommandParameterValue
	Description?: #CommandParameterDescription
	Name: #CommandParameterName
	Type?: #CommandParameterType
	Value?: #CommandParameterValue
	ValueConditions?: #CommandParameterValueConditionList
}

#CommandParameterValue: {
	B?: bool
	BIN?: string & strings.MinRunes(1)
	D?: number
	I?: int
	L?: string & =~"^-?\\d+$" & strings.MaxRunes(19)
	S?: string & strings.MinRunes(1)
	UL?: string & =~"^[0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(20)
}

#CommandParameterValueComparisonOperand: {
	Number?: string
	NumberRange?: #CommandParameterValueNumberRange
	Numbers?: #CommandParameterValueStringList
	String?: string
	Strings?: #CommandParameterValueStringList
}

#CommandParameterValueCondition: {
	ComparisonOperator: #CommandParameterValueComparisonOperator
	Operand: #CommandParameterValueComparisonOperand
}

#CommandParameterValueNumberRange: {
	Max: string & strings.MinRunes(1)
	Min: string & strings.MinRunes(1)
}

#CommandPayload: {
	Content?: #CommandPayloadContent
	ContentType?: #MimeType
}

#CommandPreprocessor: {
	AwsJsonSubstitution?: #AwsJsonSubstitutionCommandPreprocessorConfig
}

#Tag: {
	// The tag's key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
