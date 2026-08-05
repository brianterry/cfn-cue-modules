package eventsubscription

import "strings"

#Properties: {
	// A Boolean value; set to true to activate the subscription, set to false to create the subscription but not active it.
	Enabled?: bool
	// A list of event categories for a SourceType that you want to subscribe to.
	EventCategories?: [...string]
	// The Amazon Resource Name (ARN) of the SNS topic created for event notification. Amazon SNS creates the ARN when you create a topic and subscribe to it.
	SnsTopicArn: string
	// The list of identifiers of the event sources for which events are returned
	SourceIds?: [...string & =~"^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$|^[a-zA-Z]$"]
	// The type of source that is generating the events.
	SourceType?: "db-instance" | "db-cluster" | "db-parameter-group" | "db-security-group" | "db-cluster-snapshot"
	// The name of the subscription.
	SubscriptionName?: string & strings.MaxRunes(255)
}
