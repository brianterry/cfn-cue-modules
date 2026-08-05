package referencestore

import "strings"

#Properties: {
	// A description for the store.
	Description?: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// A name for the store.
	Name: string & =~"^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$" & strings.MinRunes(1) & strings.MaxRunes(127)
	SseConfig?: #SseConfig
	Tags?: #TagMap
}

#SseConfig: {
	// An encryption key ARN.
	KeyArn?: string & =~"arn:([^:\n]*):([^:\n]*):([^:\n]*):([0-9]{12}):([^:\n]*)" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Type: #EncryptionType
}
