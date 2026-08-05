package vdmattributes

#Properties: {
	DashboardAttributes?: #DashboardAttributes
	GuardianAttributes?: #GuardianAttributes
}

#DashboardAttributes: {
	// Whether emails sent from this account have engagement tracking enabled.
	EngagementMetrics?: string & =~"ENABLED|DISABLED"
}

#GuardianAttributes: {
	// Whether emails sent from this account have optimized delivery algorithm enabled.
	OptimizedSharedDelivery?: string & =~"ENABLED|DISABLED"
}
