package configrule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ConfigRuleId: string
	// Indicates whether an AWS resource or CC rule is compliant and provides the number of contributors that affect the compliance.
	Compliance: {
	Type?: string
}
	Arn: string
}
