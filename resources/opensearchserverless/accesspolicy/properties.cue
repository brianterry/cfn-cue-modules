package accesspolicy

import "strings"

#Properties: {
	// The description of the policy
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The name of the policy
	Name: string & =~"^[a-z][a-z0-9-]{2,31}$" & strings.MinRunes(3) & strings.MaxRunes(32)
	// The JSON policy document that is the content for the policy
	Policy: string & strings.MinRunes(1) & strings.MaxRunes(20480)
	Type: #AccessPolicyType
}

#AccessPolicyType: "data"
