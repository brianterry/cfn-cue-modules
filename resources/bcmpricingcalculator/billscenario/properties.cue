package billscenario

import "strings"

#Properties: {
	// The ARN of the cost category group sharing preference
	CostCategoryGroupSharingPreferenceArn?: string & =~"^arn:aws[a-z-]*:ce::[0-9]{12}:costcategory/[a-f0-9-]{36}$"
	// The timestamp when the bill scenario expires
	ExpiresAt?: string
	// The group sharing preference for the bill scenario
	GroupSharingPreference?: #GroupSharingPreference
	// The name of the bill scenario
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// An array of key-value pairs to apply to this resource
	Tags?: [...#Tag]
}

#BillInterval: {
	End?: string
	Start?: string
}

#BillScenarioStatus: "READY" | "LOCKED" | "FAILED"

#GroupSharingPreference: "OPEN" | "PRIORITIZED" | "RESTRICTED"

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
