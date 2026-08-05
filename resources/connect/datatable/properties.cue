package datatable

import "strings"

#Properties: {
	// The description of the Data Table.
	Description?: #Description
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The name of the Data Table
	Name: string & =~"^[\\p{L}\\p{Z}\\p{N}\\-_.:=@'|]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The status of the Data Table
	Status: "PUBLISHED"
	// One or more tags.
	Tags?: [...#Tag]
	// The time zone of the Data Table
	TimeZone: string
	// The value lock level of the Data Table
	ValueLockLevel: "NONE" | "DATA_TABLE" | "PRIMARY_VALUE" | "ATTRIBUTE" | "VALUE"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is maximum of 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MaxRunes(256)
}
