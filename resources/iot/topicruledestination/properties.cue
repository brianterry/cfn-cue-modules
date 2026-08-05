package topicruledestination

#Properties: {
	// HTTP URL destination properties.
	HttpUrlProperties?: #HttpUrlDestinationSummary
	// The status of the TopicRuleDestination.
	Status?: #TopicRuleDestinationStatus
	// VPC destination properties.
	VpcProperties?: #VpcDestinationProperties
}

#HttpUrlDestinationSummary: {
	ConfirmationUrl?: string
}

#TopicRuleDestinationStatus: "ENABLED" | "IN_PROGRESS" | "DISABLED"

#VpcDestinationProperties: {
	RoleArn?: string
	SecurityGroups?: [...string]
	SubnetIds?: [...string]
	VpcId?: string
}
