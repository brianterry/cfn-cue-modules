package routingprofile

import "strings"

#Properties: {
	// Whether agents with this routing profile will have their routing order calculated based on longest idle time or time since their last inbound contact.
	AgentAvailabilityTimer?: "TIME_SINCE_LAST_ACTIVITY" | "TIME_SINCE_LAST_INBOUND"
	// The identifier of the default outbound queue for this routing profile.
	DefaultOutboundQueueArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/queue/[-a-zA-Z0-9]*$"
	// The description of the routing profile.
	Description: string & strings.MinRunes(1) & strings.MaxRunes(250)
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The manual assignment queues to associate with this routing profile.
	ManualAssignmentQueueConfigs?: [...#RoutingProfileManualAssignmentQueueConfig]
	// The channels agents can handle in the Contact Control Panel (CCP) for this routing profile.
	MediaConcurrencies: [...#MediaConcurrency]
	// The name of the routing profile.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The queues to associate with this routing profile.
	QueueConfigs?: [...#RoutingProfileQueueConfig]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#CrossChannelBehavior: {
	BehaviorType: #BehaviorType
}

#MediaConcurrency: {
	Channel: #Channel
	Concurrency: #Concurrency
	CrossChannelBehavior?: #CrossChannelBehavior
}

#RoutingProfileManualAssignmentQueueConfig: {
	QueueReference: #RoutingProfileQueueReference
}

#RoutingProfileQueueConfig: {
	Delay: #Delay
	Priority: #Priority
	QueueReference: #RoutingProfileQueueReference
}

#RoutingProfileQueueReference: {
	Channel: #Channel
	QueueArn: #QueueArn
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}
