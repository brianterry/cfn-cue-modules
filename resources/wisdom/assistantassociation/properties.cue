package assistantassociation

import "strings"

#Properties: {
	AssistantId: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"
	Association: #AssociationData
	AssociationType: #AssociationType
	Tags?: [...#Tag]
}

#ExternalBedrockKnowledgeBaseConfig: {
	AccessRoleArn: string & =~"^arn:aws:iam::[0-9]{12}:role/(?:service-role/)?[a-zA-Z0-9_+=,.@-]{1,64}$"
	BedrockKnowledgeBaseArn: string & =~"^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:knowledge-base/[0-9a-zA-Z]+$"
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
