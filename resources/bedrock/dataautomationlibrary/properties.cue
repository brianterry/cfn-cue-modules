package dataautomationlibrary

import "strings"

#Properties: {
	EncryptionConfiguration?: #EncryptionConfiguration
	// Description of the DataAutomationLibrary
	LibraryDescription?: string & strings.MinRunes(0) & strings.MaxRunes(300)
	// Name of the DataAutomationLibrary
	LibraryName: string & =~"^[a-zA-Z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// List of tags
	Tags?: [...#Tag]
}

#DataAutomationLibraryStatus: "ACTIVE" | "DELETING"

#EncryptionConfiguration: {
	KmsEncryptionContext?: #KmsEncryptionContext
	// KMS Key Identifier
	KmsKeyId: string & =~"^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#EntityType: "VOCABULARY"

#EntityTypeInfo: {
	// JSON string representing relevant metadata for the entity type
	EntityMetadata?: string
	EntityType: #EntityType
}

#KmsEncryptionContext: {...}

#Tag: {
	// Tag key
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag value
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
