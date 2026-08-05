package monitoringsubscription

#Properties: {
	// The ID of the distribution that you are enabling metrics for.
	DistributionId: string
	// A subscription configuration for additional CloudWatch metrics.
	MonitoringSubscription: #MonitoringSubscription
}

#MonitoringSubscription: {
	// A subscription configuration for additional CloudWatch metrics.
	RealtimeMetricsSubscriptionConfig?: #RealtimeMetricsSubscriptionConfig
}

#RealtimeMetricsSubscriptionConfig: {
	// A flag that indicates whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
	RealtimeMetricsSubscriptionStatus: "Enabled" | "Disabled"
}
