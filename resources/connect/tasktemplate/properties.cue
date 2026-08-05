package tasktemplate

import "strings"

#Properties: {
	ClientToken?: #ClientToken
	// The constraints for the task template
	Constraints?: {
		InvisibleFields?: #InvisibleTaskTemplateFields
		ReadOnlyFields?: #ReadOnlyTaskTemplateFields
		RequiredFields?: #RequiredTaskTemplateFields
	}
	// The identifier of the contact flow.
	ContactFlowArn?: string & =~"^$|arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/contact-flow/[-a-zA-Z0-9]*(:[a-zA-Z0-9-]+)?$"
	Defaults?: [...#DefaultFieldValue]
	// The description of the task template.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(255)
	// The list of task template's fields
	Fields?: [...#Field]
	// The identifier (arn) of the instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The name of the task template.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The identifier of the contact flow.
	SelfAssignContactFlowArn?: string & =~"^$|arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/contact-flow/[-a-zA-Z0-9]*(:[a-zA-Z0-9-]+)?$"
	Status?: #Status
	// One or more tags.
	Tags?: [...#Tag]
}

#ClientToken: string & =~"^$|[0-9a-f]{8}-[0-9a-f]{4}-[0-5][0-9a-f]{3}-[089ab][0-9a-f]{3}-[0-9a-f]{12}$"

#DefaultFieldValue: {
	DefaultValue: #FieldValue
	Id: #FieldIdentifier
}

#Field: {
	// The description of the task template's field
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(255)
	Id: #FieldIdentifier
	// list of field options to be used with single select
	SingleSelectOptions?: [...#FieldOption]
	Type: #FieldType
}

#FieldIdentifier: {
	// The name of the task template field
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
}

#FieldOption: string & strings.MinRunes(1) & strings.MaxRunes(100)

#FieldType: "NAME" | "DESCRIPTION" | "SCHEDULED_TIME" | "QUICK_CONNECT" | "URL" | "NUMBER" | "TEXT" | "TEXT_AREA" | "DATE_TIME" | "BOOLEAN" | "SINGLE_SELECT" | "EMAIL" | "EXPIRY_DURATION" | "SELF_ASSIGN"

#FieldValue: string & strings.MinRunes(1) & strings.MaxRunes(4096)

#InvisibleFieldInfo: {
	Id: #FieldIdentifier
}

#InvisibleTaskTemplateFields: [...#InvisibleFieldInfo]

#ReadOnlyFieldInfo: {
	Id: #FieldIdentifier
}

#ReadOnlyTaskTemplateFields: [...#ReadOnlyFieldInfo]

#RequiredFieldInfo: {
	Id: #FieldIdentifier
}

#RequiredTaskTemplateFields: [...#RequiredFieldInfo]

#Status: "ACTIVE" | "INACTIVE"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. . You can specify a value that is maximum of 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}
