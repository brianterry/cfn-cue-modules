package customaction

import "strings"

#Properties: {
	ActionName: string & =~"^[a-zA-Z0-9_-]{1,64}$" & strings.MinRunes(1) & strings.MaxRunes(64)
	AliasName?: string & =~"^[A-Za-z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(30)
	Attachments?: [...#CustomActionAttachment]
	Definition: #CustomActionDefinition
	Tags?: [...#Tag]
}

#CustomActionAttachment: {
	ButtonText?: string & =~"^[\\S\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	Criteria?: [...#CustomActionAttachmentCriteria]
	NotificationType?: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Variables?: #CustomActionAttachmentVariables
}

#CustomActionAttachmentCriteria: {
	Operator: #CustomActionAttachmentCriteriaOperator
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	VariableName: string
}

#CustomActionAttachmentCriteriaOperator: "HAS_VALUE" | "EQUALS"

#CustomActionAttachmentVariables: {...}

#CustomActionDefinition: {
	CommandText: string & strings.MinRunes(1) & strings.MaxRunes(5000)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
