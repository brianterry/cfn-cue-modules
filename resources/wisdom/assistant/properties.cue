package assistant

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	ServerSideEncryptionConfiguration?: #ServerSideEncryptionConfiguration
	Tags?: [...#Tag]
	Type: #AssistantType
}

#ServerSideEncryptionConfiguration: {
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
