package caserule

import "strings"

#Properties: {
	// A description explaining the purpose and behavior of this case rule. Helps administrators understand when and why this rule applies to case fields.
	Description?: string & strings.MaxRunes(255)
	// The unique identifier of the Cases domain.
	DomainId?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// A descriptive name for the case rule. Must be unique within the domain and should clearly indicate the rule's purpose (e.g., 'Priority Field Required for Urgent Cases').
	Name: string & =~"^.*[\\S]$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Rule: #CaseRuleDetails
	// The tags that you attach to this case rule.
	Tags?: [...#Tag]
}

#BooleanCondition: {
	EqualTo: #BooleanOperands
} | {
	NotEqualTo: #BooleanOperands
}

#BooleanOperands: {
	OperandOne: #OperandOne
	OperandTwo: #OperandTwo
	// The value of the outer rule if the condition evaluates to true.
	Result: bool
}

#CaseRuleDetails: {
	Required: #RequiredCaseRule
} | {
	Hidden: #HiddenCaseRule
}

#EmptyOperandValue: {...}

#HiddenCaseRule: {
	// List of conditions for the hidden rule; the first condition to evaluate to true dictates the value of the rule
	Conditions: [...#BooleanCondition]
	// The value of the rule (i.e. whether the field is hidden) should none of the conditions evaluate to true
	DefaultValue: bool
}

#OperandOne: {
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(500)
}

#OperandTwo: {
	StringValue: string & strings.MinRunes(1) & strings.MaxRunes(1500)
} | {
	BooleanValue: bool
} | {
	DoubleValue: number
} | {
	EmptyValue: #EmptyOperandValue
}

#RequiredCaseRule: {
	// An ordered list of boolean conditions that determine when the field should be required. Conditions are evaluated in order, and the first condition that evaluates to true determines whether the field is required, overriding the default value.
	Conditions: [...#BooleanCondition]
	// The default required state for the field when none of the specified conditions are met. If true, the field is required by default; if false, the field is optional by default.
	DefaultValue: bool
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
