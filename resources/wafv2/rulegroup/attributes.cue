package rulegroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: #ResourceArn
	Id: #EntityId
	LabelNamespace: #LabelName
	// Collection of Available Labels.
	AvailableLabels: [...#LabelSummary]
	// Collection of Consumed Labels.
	ConsumedLabels: [...#LabelSummary]
}
