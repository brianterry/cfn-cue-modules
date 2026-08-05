package dashboard

import "strings"

#Properties: {
	// The name of the dashboard.
	Name?: string & =~"^[a-zA-Z0-9_\\-]+$"
	// Configures the automatic refresh schedule for the dashboard. Includes the frequency unit (DAYS or HOURS) and value, as well as the status (ENABLED or DISABLED) of the refresh schedule.
	RefreshSchedule?: #RefreshSchedule
	Tags?: [...#Tag]
	// Indicates whether the dashboard is protected from termination.
	TerminationProtectionEnabled?: bool
	// List of widgets on the dashboard
	Widgets?: [...#Widget]
}

#RefreshSchedule: {
	Frequency?: {
		Unit: "HOURS" | "DAYS"
		Value: int
	}
	// The status of the schedule. Supported values are ENABLED and DISABLED.
	Status?: "ENABLED" | "DISABLED"
	// StartTime of the automatic schedule refresh.
	TimeOfDay?: string & =~"^[0-9]{2}:[0-9]{2}"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}

#Widget: {
	// The placeholder keys in the QueryStatement. For example: $StartTime$, $EndTime$, $Period$.
	QueryParameters?: [...#QueryParameter]
	// The SQL query statement on one or more event data stores.
	QueryStatement: string & =~"(?s).*" & strings.MinRunes(1) & strings.MaxRunes(10000)
	// The view properties of the widget.
	ViewProperties?: {...}
}
