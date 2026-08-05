package recommender

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the recommender.
	RecommenderArn: string & =~"^arn:([a-z\\d-]+):profile:.*:.*:.+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Status: #RecommenderStatus
	// The timestamp of when the recommender was created.
	CreatedAt: string
	// The timestamp of when the recommender was last updated.
	LastUpdatedAt: string
	// The reason for recommender failure.
	FailureReason: string
	LatestRecommenderUpdate: #RecommenderUpdate
	TrainingMetrics: [...#TrainingMetrics]
}
