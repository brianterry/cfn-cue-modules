package integrationassociation

import "strings"

#Properties: {
	InstanceId: #InstanceId
	IntegrationArn: #IntegrationArn
	IntegrationType: #IntegrationType
	// The tags used to organize, track, or control access for this resource.
	Tags?: [...#Tag]
}

#InstanceId: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(100)

#IntegrationArn: string & strings.MinRunes(1) & strings.MaxRunes(140)

#IntegrationAssociationId: string

#IntegrationType: "LEX_BOT" | "LAMBDA_FUNCTION" | "APPLICATION" | "CASES_DOMAIN" | "WISDOM_ASSISTANT" | "WISDOM_KNOWLEDGE_BASE" | "WISDOM_QUICK_RESPONSES" | "FILE_SCANNER" | "MESSAGE_PROCESSOR" | "Q_MESSAGE_TEMPLATES" | "SES_IDENTITY"

#Tag: {
	// The key name of the tag.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
