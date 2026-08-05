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

#Default: {...}

#DeletionMode: "ENABLED" | "DISABLED"

#DeletionProtection: {
	Mode: #DeletionMode
}

#EncryptionContext: {...}

#EncryptionSettings: {
	KmsEncryptionSettings: #KmsEncryptionSettings
} | {
	Default: #Default
}

#KmsEncryptionSettings: {
	EncryptionContext?: #EncryptionContext
	Key: #KmsKey
}

#KmsEncryptionState: {
	EncryptionContext: #EncryptionContext
	Key: #KmsKey
}

#KmsKey: string & =~"^[a-zA-Z0-9:/_-]+$"

#SchemaDefinition: {
	CedarJson?: #SchemaJson
}

#SchemaJson: string

#Tag: {
	Key: string
	Value: string
}

#ValidationMode: "OFF" | "STRICT"

#ValidationSettings: {
	Mode: #ValidationMode
}
