package resourcepolicy

import "strings"

#Properties: {
	// A flag to indicate whether to bypass the resource policy lockout safety check
	BypassPolicyLockoutCheck?: bool
	// The resource policy document, which can be up to 5kb in size.
	PolicyDocument: string & strings.MinRunes(1) & strings.MaxRunes(5120)
	// The name of the resource policy. Must be unique within a specific AWS account.
	PolicyName: string & =~"[\\w+=,.@-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}
