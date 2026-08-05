package scheduledaction

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The state of the scheduled action.
	State: "ACTIVE" | "DISABLED"
	// List of times when the scheduled action will run.
	NextInvocations: [...#timestamp]
}
