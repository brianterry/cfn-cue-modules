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

#AttributeName: string & =~"^[a-zA-Z_0-9- \\t]*$" & strings.MinRunes(0) & strings.MaxRunes(255)

#CreatedAt: string

#Description: string & strings.MinRunes(0) & strings.MaxRunes(255)

#EntityName: string & =~"^[a-zA-Z_0-9-]*$" & strings.MinRunes(0) & strings.MaxRunes(255)

#HasWorkflows: bool

#Hashed: bool

#MappedInputFields: [...#SchemaInputAttribute]

#SchemaAttributeType: "NAME" | "NAME_FIRST" | "NAME_MIDDLE" | "NAME_LAST" | "ADDRESS" | "ADDRESS_STREET1" | "ADDRESS_STREET2" | "ADDRESS_STREET3" | "ADDRESS_CITY" | "ADDRESS_STATE" | "ADDRESS_COUNTRY" | "ADDRESS_POSTALCODE" | "PHONE" | "PHONE_NUMBER" | "PHONE_COUNTRYCODE" | "EMAIL_ADDRESS" | "UNIQUE_ID" | "DATE" | "STRING" | "PROVIDER_ID"

#SchemaInputAttribute: {
	FieldName: #AttributeName
	GroupName?: #AttributeName
	Hashed?: #Hashed
	MatchKey?: #AttributeName
	// The subtype of the Attribute. Would be required only when type is PROVIDER_ID
	SubType?: string
	Type: #SchemaAttributeType
}

#SchemaMappingArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):entityresolution:.*:[0-9]+:(schemamapping/.*)$"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#UpdatedAt: string
