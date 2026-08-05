package matchmakingconfiguration

import "strings"

#Properties: {
	// A flag that indicates whether a match that was created with this configuration must be accepted by the matched players
	AcceptanceRequired: bool
	// The length of time (in seconds) to wait for players to accept a proposed match, if acceptance is required.
	AcceptanceTimeoutSeconds?: int & >=1 & <=600
	// The number of player slots in a match to keep open for future players.
	AdditionalPlayerCount?: int & >=0
	// The method used to backfill game sessions created with this matchmaking configuration.
	BackfillMode?: "AUTOMATIC" | "MANUAL"
	// A time stamp indicating when this data object was created.
	CreationTime?: string
	// Information to attach to all events related to the matchmaking configuration.
	CustomEventData?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	// A descriptive label that is associated with matchmaking configuration.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// Indicates whether this matchmaking configuration is being used with Amazon GameLift hosting or as a standalone matchmaking solution.
	FlexMatchMode?: "STANDALONE" | "WITH_QUEUE"
	// A set of custom properties for a game session, formatted as key:value pairs.
	GameProperties?: [...#GameProperty]
	// A set of custom game session properties, formatted as a single string value.
	GameSessionData?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	// The Amazon Resource Name (ARN) that is assigned to a Amazon GameLift game session queue resource and uniquely identifies it.
	GameSessionQueueArns?: [...string & =~"[a-zA-Z0-9:/-]+" & strings.MinRunes(1) & strings.MaxRunes(256)]
	// A unique identifier for the matchmaking configuration.
	Name: string & =~"[a-zA-Z0-9-\\.]*" & strings.MaxRunes(128)
	// An SNS topic ARN that is set up to receive matchmaking notifications.
	NotificationTarget?: string & =~"[a-zA-Z0-9:_/-]*(.fifo)?" & strings.MinRunes(0) & strings.MaxRunes(300)
	// The maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out.
	RequestTimeoutSeconds: int & >=1 & <=43200
	// The Amazon Resource Name (ARN) associated with the GameLift matchmaking rule set resource that this configuration uses.
	RuleSetArn?: string & =~"^arn:.*:matchmakingruleset\\/[a-zA-Z0-9-\\.]*"
	// A unique identifier for the matchmaking rule set to use with this configuration.
	RuleSetName: string & =~"[a-zA-Z0-9-\\.]*" & strings.MaxRunes(128)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#GameProperty: {
	// The game property identifier.
	Key: string & strings.MaxRunes(32)
	// The game property value.
	Value: string & strings.MaxRunes(96)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
