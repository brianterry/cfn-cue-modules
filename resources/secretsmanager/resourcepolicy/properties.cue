package resourcepolicy

import "strings"

#Properties: {
	// Specifies whether to block resource-based policies that allow broad access to the secret.
	BlockPublicPolicy?: bool
	// A JSON-formatted string for an AWS resource-based policy.
	ResourcePolicy: string
	// The ARN or name of the secret to attach the resource-based policy.
	SecretId: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}
