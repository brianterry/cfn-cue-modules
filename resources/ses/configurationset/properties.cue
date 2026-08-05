package configurationset

import "strings"

#Properties: {
	ArchivingOptions?: #ArchivingOptions
	DeliveryOptions?: #DeliveryOptions
	// The name of the configuration set.
	Name?: string & =~"^[a-zA-Z0-9_-]{1,64}$"
	ReputationOptions?: #ReputationOptions
	SendingOptions?: #SendingOptions
	SuppressionOptions?: #SuppressionOptions
	// The tags (keys and values) associated with the contact list.
	Tags?: [...#Tag]
	TrackingOptions?: #TrackingOptions
	VdmOptions?: #VdmOptions
}

#ArchivingOptions: {
	// The ARN of the MailManager archive to associate with the configuration set.
	ArchiveArn?: string
}

#DashboardOptions: {
	// Whether emails sent with this configuration set have engagement tracking enabled.
	EngagementMetrics: string & =~"ENABLED|DISABLED"
}

#DeliveryOptions: {
	// Specifies the maximum time until which SES will retry sending emails
	MaxDeliverySeconds?: number & >=300 & <=50400
	// The name of the dedicated IP pool to associate with the configuration set.
	SendingPoolName?: string
	// Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). If the value is Require , messages are only delivered if a TLS connection can be established. If the value is Optional , messages can be delivered in plain text if a TLS connection can't be established.
	TlsPolicy?: string & =~"REQUIRE|OPTIONAL"
}

#GuardianOptions: {
	// Whether emails sent with this configuration set have optimized delivery algorithm enabled.
	OptimizedSharedDelivery: string & =~"ENABLED|DISABLED"
}

#ReputationOptions: {
	// If true , tracking of reputation metrics is enabled for the configuration set. If false , tracking of reputation metrics is disabled for the configuration set.
	ReputationMetricsEnabled?: bool
}

#SendingOptions: {
	SendingEnabled?: bool
}

#SuppressionOptions: {
	// A list that contains the reasons that email addresses are automatically added to the suppression list for your account.
	SuppressedReasons?: [...string & =~"BOUNCE|COMPLAINT"]
	// An object that contains information about the validation options for your account.
	ValidationOptions?: {
		ConditionThreshold: {
			ConditionThresholdEnabled: string & =~"ENABLED|DISABLED"
			OverallConfidenceThreshold?: {
				ConfidenceVerdictThreshold: string & =~"MEDIUM|HIGH|MANAGED"
			}
		}
	}
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TrackingOptions: {
	// The domain to use for tracking open and click events.
	CustomRedirectDomain?: string
	// The https policy to use for tracking open and click events.
	HttpsPolicy?: string & =~"REQUIRE|REQUIRE_OPEN_ONLY|OPTIONAL"
}

#VdmOptions: {
	DashboardOptions?: #DashboardOptions
	GuardianOptions?: #GuardianOptions
}
