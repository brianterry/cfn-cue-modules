package policystore

import "strings"

#Properties: {
	DeletionProtection?: #DeletionProtection
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(150)
	EncryptionSettings?: #EncryptionSettings
	Schema?: #SchemaDefinition
	// The tags to add to the policy store
	Tags?: [...#Tag]
	ValidationSettings: #ValidationSettings
}

#DeletionProtection: {
	Mode: #DeletionMode
}

#KmsEncryptionSettings: {
	EncryptionContext?: #EncryptionContext
	Key: #KmsKey
}

#KmsEncryptionState: {
	EncryptionContext: #EncryptionContext
	Key: #KmsKey
}

#SchemaDefinition: {
	CedarJson?: #SchemaJson
}

#Tag: {
	Key: string
	Value: string
}

#ValidationSettings: {
	Mode: #ValidationMode
}
