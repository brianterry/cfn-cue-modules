package resiliencypolicy

import "strings"

#Properties: {
	// Data Location Constraint of the Policy.
	DataLocationConstraint?: "AnyLocation" | "SameContinent" | "SameCountry"
	Policy: #PolicyMap
	// Description of Resiliency Policy.
	PolicyDescription?: string & strings.MaxRunes(500)
	// Name of Resiliency Policy.
	PolicyName: string & =~"^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"
	Tags?: #TagMap
	// Resiliency Policy Tier.
	Tier: "MissionCritical" | "Critical" | "Important" | "CoreServices" | "NonCritical"
}

#FailurePolicy: {
	// RPO in seconds.
	RpoInSecs: int
	// RTO in seconds.
	RtoInSecs: int
}

#PolicyMap: {
	AZ: #FailurePolicy
	Hardware: #FailurePolicy
	Region?: #FailurePolicy
	Software: #FailurePolicy
}
