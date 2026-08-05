package billscenario

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the bill scenario.
	Arn: string & =~"^arn:aws[-a-z]*:bcm-pricing-calculator::[0-9]{12}:bill-scenario/[a-f0-9-]+$"
	// The unique identifier of the bill scenario
	Id: string
	// The time period covered by the bill scenario
	BillInterval: #BillInterval
	// The status of the bill scenario
	Status: #BillScenarioStatus
	// The timestamp when the bill scenario was created
	CreatedAt: string
	// The failure message if the bill scenario failed
	FailureMessage: string
}
