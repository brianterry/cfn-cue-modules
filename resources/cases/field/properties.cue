package field

import "strings"

#Properties: {
	// Field-type specific attributes that control rendering and validation behavior
	Attributes?: #FieldAttributes
	// A description explaining the purpose and usage of this field in cases. Helps agents and administrators understand what information should be captured in this field.
	Description?: string & strings.MaxRunes(255)
	// The unique identifier of the Cases domain.
	DomainId?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The display name of the field as it appears to agents in the case interface. Should be descriptive and user-friendly (e.g., 'Customer Priority Level', 'Issue Category').
	Name: string & =~"^.*[\\S]$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Tags?: #Tags
	Type: #FieldType
}

#FieldAttributes: {
	Text?: #TextAttributes
}

#FieldType: "Text" | "Number" | "Boolean" | "DateTime" | "SingleSelect" | "Url" | "User"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]

#TextAttributes: {
	// Attribute that defines rendering component and validation
	IsMultiline: bool
}
