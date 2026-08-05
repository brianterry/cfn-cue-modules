package blueprint

import "strings"

#Properties: {
	// Name of the Blueprint
	BlueprintName: string & =~"^[a-zA-Z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// KMS encryption context
	KmsEncryptionContext?: {...}
	// KMS key identifier
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Schema of the blueprint
	Schema: {...}
	// List of Tags
	Tags?: [...#Tag]
	// Modality Type
	Type: "DOCUMENT" | "IMAGE" | "AUDIO" | "VIDEO"
}

#Tag: {
	// Key for the tag
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Value for the tag
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
