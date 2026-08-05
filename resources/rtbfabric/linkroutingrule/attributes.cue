package linkroutingrule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	RuleId: #RuleId
	Arn: #Arn
	Status: #RuleStatus
	CreatedTimestamp: #CreatedTimestamp
	UpdatedTimestamp: #UpdatedTimestamp
}
