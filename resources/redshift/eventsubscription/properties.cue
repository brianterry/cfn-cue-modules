package eventsubscription

import "strings"

#Properties: {
	// A boolean value; set to true to activate the subscription, and set to false to create the subscription but not activate it.
	Enabled?: bool
	// Specifies the Amazon Redshift event categories to be published by the event notification subscription.
	EventCategories?: [..."configuration" | "management" | "monitoring" | "security" | "pending"]
	// Specifies the Amazon Redshift event severity to be published by the event notification subscription.
	Severity?: "ERROR" | "INFO"
	// The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event notifications.
	SnsTopicArn?: string
	// A list of one or more identifiers of Amazon Redshift source objects.
	SourceIds?: [...string]
	// The type of source that will be generating the events.
	SourceType?: "cluster" | "cluster-parameter-group" | "cluster-security-group" | "cluster-snapshot" | "scheduled-action"
	// The name of the Amazon Redshift event notification subscription
	SubscriptionName: string & =~"^(?=^[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$).{1,255}$"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
