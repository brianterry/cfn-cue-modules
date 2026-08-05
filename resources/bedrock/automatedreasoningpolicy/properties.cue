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

#CreatedAt: string

#DefinitionHash: string & =~"^[0-9a-z]{128}$" & strings.MinRunes(128) & strings.MaxRunes(128)

#Description: string & =~"^[\\s\\S]+$" & strings.MaxRunes(1024)

#ForceDelete: bool

#KmsKeyArn: string & =~"^arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#KmsKeyId: string & =~"^(arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:((key/[a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+)))|([a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+)$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#Name: string & =~"^[0-9a-zA-Z-_ ]+$" & strings.MinRunes(1) & strings.MaxRunes(256)

#PolicyArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:automated-reasoning-policy\\/[a-z0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(2048)

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

#PolicyDefinitionRuleList: [...#PolicyDefinitionRule]

#PolicyDefinitionType: {
	// A natural language description of this type.
	Description?: string & =~"^[\\s\\S]+$" & strings.MaxRunes(1024)
	// A name for this type.
	Name: string & =~"^[A-Za-z][A-Za-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// A list of valid values for this type.
	Values: #PolicyDefinitionTypeValueList
}

#PolicyDefinitionTypeList: [...#PolicyDefinitionType]

#PolicyDefinitionTypeValue: {
	// A natural language description of the type's value.
	Description?: string & =~"^[\\s\\S]+$" & strings.MaxRunes(1024)
	// The value of the type value.
	Value: string & =~"^[A-Za-z][A-Za-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#PolicyDefinitionTypeValueList: [...#PolicyDefinitionTypeValue]

#PolicyDefinitionVariable: {
	// A natural language description of this variable.
	Description: string & =~"^[\\s\\S]+$" & strings.MaxRunes(1024)
	// A name from this variable.
	Name: string & =~"^[A-Za-z][A-Za-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// A type for this variable.
	Type: string & =~"^[A-Za-z][A-Za-z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#PolicyDefinitionVariableList: [...#PolicyDefinitionVariable]

#PolicyId: string & =~"^[a-z0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#Tag: {
	// Tag Key
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag Value
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]

#UpdatedAt: string

#Version: string & =~"^(([1-9][0-9]{0,11})|(DRAFT))$"
