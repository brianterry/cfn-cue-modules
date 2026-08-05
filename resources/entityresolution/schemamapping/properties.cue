package schemamapping

import "strings"

#Properties: {
	// The description of the SchemaMapping
	Description?: #Description
	// The SchemaMapping attributes input
	MappedInputFields: #MappedInputFields
	// The name of the SchemaMapping
	SchemaName: #EntityName
	Tags?: [...#Tag]
}

#SchemaInputAttribute: {
	FieldName: #AttributeName
	GroupName?: #AttributeName
	Hashed?: #Hashed
	MatchKey?: #AttributeName
	// The subtype of the Attribute. Would be required only when type is PROVIDER_ID
	SubType?: string
	Type: #SchemaAttributeType
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
