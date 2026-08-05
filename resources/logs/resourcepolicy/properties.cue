package resourcepolicy

import "strings"

#Properties: {
	// The policy document
	PolicyDocument: string & =~"[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+" & strings.MinRunes(1) & strings.MaxRunes(5120)
	// A name for resource policy
	PolicyName: string & =~"^([^:*\\/]+\\/?)*[^:*\\/]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
}
