package lifecyclepolicy

import "strings"

#Properties: {
	// The description of the policy
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	// The name of the policy
	Name: string & =~"^[a-z][a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(32)
	// The JSON policy document that is the content for the policy
	Policy: string & strings.MinRunes(1) & strings.MaxRunes(20480)
	Type: #LifecyclePolicyType
}
