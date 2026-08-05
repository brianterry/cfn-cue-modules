package privacybudgettemplate

import "strings"

#Properties: {
	AutoRefresh: "CALENDAR_MONTH" | "NONE"
	MembershipIdentifier: string & =~"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" & strings.MinRunes(36) & strings.MaxRunes(36)
	Parameters: {
		BudgetParameters?: [...#BudgetParameter]
		Epsilon?: int & >=1 & <=20
		ResourceArn?: string & strings.MaxRunes(200)
		UsersNoisePerQuery?: int & >=10 & <=100
	}
	PrivacyBudgetType: "DIFFERENTIAL_PRIVACY" | "ACCESS_BUDGET"
	// An arbitrary set of tags (key-value pairs) for this cleanrooms privacy budget template.
	Tags?: [...#Tag]
}

#BudgetParameter: {
	AutoRefresh?: "ENABLED" | "DISABLED"
	Budget: int & >=0
	Type: "CALENDAR_DAY" | "CALENDAR_MONTH" | "CALENDAR_WEEK" | "LIFETIME"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
