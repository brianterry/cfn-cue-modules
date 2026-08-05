package domainobjecttype

import "strings"

#Properties: {
	Description?: #Description
	DomainName: #DomainName
	EncryptionKey?: #EncryptionKey
	Fields: #DomainObjectTypeFields
	ObjectTypeName: #ObjectTypeName
	Tags?: #Tags
}

#DomainObjectTypeField: {
	// The content type of the field.
	ContentType?: "STRING" | "NUMBER"
	// The feature type of the field.
	FeatureType?: "TEXTUAL" | "CATEGORICAL"
	// The source field name.
	Source: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The target field name.
	Target: string & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
