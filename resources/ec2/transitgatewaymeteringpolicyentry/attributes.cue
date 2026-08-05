package transitgatewaymeteringpolicyentry

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The timestamp at which the latest action performed on the metering policy entry will become effective
	UpdateEffectiveAt: string
	// State of the transit gateway metering policy
	State: string
}
