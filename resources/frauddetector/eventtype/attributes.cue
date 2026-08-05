package eventtype

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the event type.
	Arn: string
	// The time when the event type was created.
	CreatedTime: string
	// The time when the event type was last updated.
	LastUpdatedTime: string
	EventVariables: [...#EventVariable]
	Labels: [...#Label]
	EntityTypes: [...#EntityType]
}
