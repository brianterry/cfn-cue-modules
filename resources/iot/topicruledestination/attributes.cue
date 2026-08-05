package topicruledestination

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Resource Name (ARN).
	Arn: string
	// The reasoning for the current status of the TopicRuleDestination.
	StatusReason: string
}
