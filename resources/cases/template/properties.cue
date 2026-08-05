package template

import "strings"

#Properties: {
	// A description explaining the purpose and use case for this template. Should indicate what types of cases this template is designed for and any specific workflow it supports.
	Description?: string & strings.MaxRunes(255)
	// The unique identifier of the Cases domain.
	DomainId?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	LayoutConfiguration?: #LayoutConfiguration
	// A name for the template. It must be unique per domain.
	Name: string & =~"^.*[\\S]$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// A list of fields that must contain a value for a case to be successfully created with this template.
	RequiredFields?: [...#RequiredField]
	// A list of case rules (also known as case field conditions) on a template.
	Rules?: [...#TemplateRule]
	Status?: #TemplateStatus
	// The tags that you attach to this template.
	Tags?: [...#Tag]
}

#LayoutConfiguration: {
	// The unique identifier of a layout.
	DefaultLayout?: string & strings.MinRunes(1) & strings.MaxRunes(500)
}

#RequiredField: {
	// The unique identifier of a field.
	FieldId: string & strings.MinRunes(1) & strings.MaxRunes(500)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TemplateRule: {
	// The unique identifier of a case rule.
	CaseRuleId: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The ID of the field that this rule applies to.
	FieldId?: string & strings.MinRunes(1) & strings.MaxRunes(500)
}
