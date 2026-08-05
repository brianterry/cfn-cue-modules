package integrationassociation

import "strings"

#Properties: {
	InstanceId: #InstanceId
	IntegrationArn: #IntegrationArn
	IntegrationType: #IntegrationType
	// The tags used to organize, track, or control access for this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
