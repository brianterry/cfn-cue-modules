package policyengine

import "strings"

#Properties: {
	// A human-readable description of the policy engine's purpose and scope
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	// The ARN of the KMS key used to encrypt the policy engine data
	EncryptionKeyArn?: string & =~"^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The customer-assigned immutable name for the policy engine
	Name: string & =~"^[A-Za-z][A-Za-z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(48)
	// A list of tags to assign to the policy engine.
	Tags?: [...#Tag]
}

#PolicyEngineStatus: "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETE_FAILED"

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
