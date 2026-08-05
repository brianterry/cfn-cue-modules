package automatedreasoningpolicy

import "strings"

#Properties: {
	Description?: #Description
	ForceDelete?: #ForceDelete
	KmsKeyId?: #KmsKeyId
	Name: #Name
	PolicyDefinition?: #PolicyDefinition
	Tags?: #Tags
}

#PolicyDefinition: {
	// The rules definition block of an AutomatedReasoningPolicyDefinition.
	Rules?: #PolicyDefinitionRuleList
	// The types definition block of an AutomatedReasoningPolicyDefinition.
	Types?: #PolicyDefinitionTypeList
	// The variables definition block of an AutomatedReasoningPolicyDefinition.
	Variables?: #PolicyDefinitionVariableList
	// The policy format version.
	Version?: string
}

#PolicyDefinitionRule: {
	// An alternate expression for this rule
	AlternateExpression?: string & =~"^[\\s\\S]+$" & strings.MaxRunes(2048)
	// The SMT expression for this rule
	Expression: string & =~"^[\\s\\S]+$" & strings.MaxRunes(2048)
	// A unique id within the PolicyDefinition
	Id: string & =~"^[A-Z][0-9A-Z]{11}$" & strings.MinRunes(12) & strings.MaxRunes(12)
}

#PolicyDefinitionType: {
	// A natural language description of this type.
	Description?: string & =~"^[\\s\\S]+$" & strings.MaxRunes(1024)
	// A name for this type.
	Name: string & =~"^[A-Za-z][A-Za-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// A list of valid values for this type.
	Values: #PolicyDefinitionTypeValueList
}

#PolicyDefinitionTypeValue: {
	// A natural language description of the type's value.
	Description?: string & =~"^[\\s\\S]+$" & strings.MaxRunes(1024)
	// The value of the type value.
	Value: string & =~"^[A-Za-z][A-Za-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#PolicyDefinitionVariable: {
	// A natural language description of this variable.
	Description: string & =~"^[\\s\\S]+$" & strings.MaxRunes(1024)
	// A name from this variable.
	Name: string & =~"^[A-Za-z][A-Za-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// A type for this variable.
	Type: string & =~"^[A-Za-z][A-Za-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Tag: {
	// Tag Key
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag Value
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
