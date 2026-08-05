package eventdatastore

import "strings"

#Properties: {
	// The advanced event selectors that were used to select events for the data store.
	AdvancedEventSelectors?: [...#AdvancedEventSelector]
	// The mode that the event data store will use to charge for event storage.
	BillingMode?: string
	// An array that enriches event records in an existing event data store by including additional information specified in individual ContexKeySelector entries. If you add ContextKeySelectors, you must set MaxEventSize to Large.
	ContextKeySelectors?: [...#ContextKeySelector]
	// Indicates whether federation is enabled on an event data store.
	FederationEnabled?: bool
	// The ARN of the role used for event data store federation.
	FederationRoleArn?: string
	// Indicates whether the event data store is ingesting events.
	IngestionEnabled?: bool
	// Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing event data store. Both InsightSelectors and InsightsDestination need to have a value in order to enable Insights events on an event data store.
	InsightSelectors?: [...#InsightSelector]
	// Specifies the ARN of the event data store that will collect Insights events. Both InsightSelectors and InsightsDestination need to have a value in order to enable Insights events on an event data store
	InsightsDestination?: string
	// Specifies the KMS key ID to use to encrypt the events delivered by CloudTrail. The value can be an alias name prefixed by 'alias/', a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
	KmsKeyId?: string
	// Specifies the maximum size allowed for the event. Valid values are Standard and Large. If you add ContextKeySelectors, this value must be set to Large.
	MaxEventSize?: "Standard" | "Large"
	// Indicates whether the event data store includes events from all regions, or only from the region in which it was created.
	MultiRegionEnabled?: bool
	// The name of the event data store.
	Name?: string
	// Indicates that an event data store is collecting logged events for an organization.
	OrganizationEnabled?: bool
	// The retention period, in days.
	RetentionPeriod?: int
	Tags?: [...#Tag]
	// Indicates whether the event data store is protected from termination.
	TerminationProtectionEnabled?: bool
}

#AdvancedEventSelector: {
	// Contains all selector statements in an advanced event selector.
	FieldSelectors: [...#AdvancedFieldSelector]
	// An optional, descriptive name for an advanced event selector, such as "Log data events for only two S3 buckets".
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#AdvancedFieldSelector: {
	// An operator that includes events that match the last few characters of the event record field specified as the value of Field.
	EndsWith?: [...string & =~"(.+)" & strings.MinRunes(1) & strings.MaxRunes(2048)]
	// An operator that includes events that match the exact value of the event record field specified as the value of Field. This is the only valid operator that you can use with the readOnly, eventCategory, and resources.type fields.
	Equals?: [...string & =~"(.+)" & strings.MinRunes(1) & strings.MaxRunes(2048)]
	// A field in an event record on which to filter events to be logged. Supported fields include readOnly, eventCategory, eventSource (for management events), eventName, resources.type, and resources.ARN.
	Field: string & =~"([\\w|\\d|\\.|_]+)" & strings.MinRunes(1) & strings.MaxRunes(1000)
	// An operator that excludes events that match the last few characters of the event record field specified as the value of Field.
	NotEndsWith?: [...string & =~"(.+)" & strings.MinRunes(1) & strings.MaxRunes(2048)]
	// An operator that excludes events that match the exact value of the event record field specified as the value of Field.
	NotEquals?: [...string & =~"(.+)" & strings.MinRunes(1) & strings.MaxRunes(2048)]
	// An operator that excludes events that match the first few characters of the event record field specified as the value of Field.
	NotStartsWith?: [...string & =~"(.+)" & strings.MinRunes(1) & strings.MaxRunes(2048)]
	// An operator that includes events that match the first few characters of the event record field specified as the value of Field.
	StartsWith?: [...string & =~"(.+)" & strings.MinRunes(1) & strings.MaxRunes(2048)]
}

#ContextKeySelector: {
	// An operator that includes events that match the exact value of the event record field specified in Type.
	Equals: [...string & =~"(.+)" & strings.MinRunes(1) & strings.MaxRunes(128)]
	// Specifies the type of the event record field in ContextKeySelector. Valid values include RequestContext, TagContext.
	Type: "RequestContext" | "TagContext"
}

#InsightSelector: {
	// The type of Insights to log on an event data store.
	InsightType?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}
