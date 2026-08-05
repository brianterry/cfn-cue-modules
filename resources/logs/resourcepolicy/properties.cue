package resourcepolicy

import "strings"

#Properties: {
	// The policy document
	PolicyDocument: string & strings.MinRunes(1) & strings.MaxRunes(5120)
	// A name for resource policy
	PolicyName: string & =~"^([^:*\\/]+\\/?)*[^:*\\/]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
}
