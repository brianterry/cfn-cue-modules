package layout

import "strings"

#Properties: {
	Content: #LayoutContent
	// The unique identifier of the Cases domain.
	DomainId?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// A descriptive name for the layout. Must be unique within the Cases domain and should clearly indicate the layout's purpose and field organization.
	Name: string & =~"^.*[\\S]$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Tags?: #Tags
}

#BasicLayout: {
	MoreInfo?: #LayoutSections
	TopPanel?: #LayoutSections
}

#FieldGroup: {
	// An ordered list of fields to display in this group. The order determines the sequence in which fields appear in the agent interface. Each field is referenced by its unique field ID.
	Fields: [...#FieldItem]
	// A descriptive name for the field group. Helps organize related fields together in the layout interface.
	Name?: string & strings.MaxRunes(100)
}

#FieldItem: {
	// The unique identifier of a field.
	Id: string & strings.MinRunes(1) & strings.MaxRunes(500)
}

#LayoutSections: {
	// Defines the sections within a panel or tab. Contains field groups that organize related fields together.
	Sections?: [...#Section]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
