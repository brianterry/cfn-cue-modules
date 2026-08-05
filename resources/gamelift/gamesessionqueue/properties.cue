package gamesessionqueue

import "strings"

#Properties: {
	// Information that is added to all events that are related to this game session queue.
	CustomEventData?: string & =~"[\\s\\S]*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue.
	Destinations?: [...#GameSessionQueueDestination]
	// A list of locations where a queue is allowed to place new game sessions.
	FilterConfiguration?: #FilterConfiguration
	// A descriptive label that is associated with game session queue. Queue names must be unique within each Region.
	Name: string & =~"[a-zA-Z0-9-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// An SNS topic ARN that is set up to receive game session placement notifications.
	NotificationTarget?: string & =~"[a-zA-Z0-9:_-]*(\\.fifo)?" & strings.MinRunes(1) & strings.MaxRunes(300)
	// A set of policies that act as a sliding cap on player latency.
	PlayerLatencyPolicies?: [...#PlayerLatencyPolicy]
	// Custom settings to use when prioritizing destinations and locations for game session placements.
	PriorityConfiguration?: #PriorityConfiguration
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The maximum time, in seconds, that a new game session placement request remains in the queue.
	TimeoutInSeconds?: int & >=0
}

#AllowedLocations: [...string & =~"^[a-z]+(-([a-z]+|\\d))*" & strings.MinRunes(1) & strings.MaxRunes(64)]

#FilterConfiguration: {
	AllowedLocations?: #AllowedLocations
}

#GameSessionQueueDestination: {
	DestinationArn?: string & =~"[a-zA-Z0-9:/-]+" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#LocationOrder: [...string & =~"^[A-Za-z0-9\\-]+" & strings.MinRunes(1) & strings.MaxRunes(64)]

#PlayerLatencyPolicy: {
	// The maximum latency value that is allowed for any player, in milliseconds. All policies must have a value set for this property.
	MaximumIndividualPlayerLatencyMilliseconds?: int & >=0
	// The length of time, in seconds, that the policy is enforced while placing a new game session.
	PolicyDurationSeconds?: int & >=0
}

#PriorityConfiguration: {
	LocationOrder?: #LocationOrder
	PriorityOrder?: #PriorityOrder
}

#PriorityOrder: [..."LATENCY" | "COST" | "DESTINATION" | "LOCATION"]

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 256 Unicode characters in length.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
