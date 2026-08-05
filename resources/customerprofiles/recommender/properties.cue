package recommender

import "strings"

#Properties: {
	Description?: #Description
	DomainName: #DomainName
	RecommenderConfig?: #RecommenderConfig
	RecommenderName: #RecommenderName
	RecommenderRecipeName: #RecommenderRecipeName
	// The tags used to organize, track, or control access for this resource.
	Tags?: [...#Tag]
}

#EventParameters: {
	// The type of event
	EventType: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The threshold of the event type. Only events with a value greater or equal to this threshold will be considered for solution creation.
	EventValueThreshold?: number
}

#EventsConfig: {
	// List of event parameters with their value thresholds
	EventParametersList: [...#EventParameters]
}

#RecommenderConfig: {
	EventsConfig?: #EventsConfig
}

#RecommenderUpdate: {
	// The timestamp of when the update was created
	CreationDateTime?: string
	// The reason for update failure
	FailureReason?: string
	// The timestamp of when the update was last modified
	LastUpdatedDateTime?: string
	RecommenderConfig?: #RecommenderConfig
	Status?: #RecommenderStatus
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TrainingMetrics: {
	// Training metrics by type
	Metrics?: {
		coverage?: number
		freshness?: number
		hit?: number
		popularity?: number
		recall?: number
		similarity?: number
	}
	// Timestamp of the training metrics
	Time?: string
}
