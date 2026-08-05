package transitgatewaymeteringpolicy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Id of the transit gateway metering policy
	TransitGatewayMeteringPolicyId: string
	// State of the transit gateway metering policy
	State: string
	// The timestamp at which the latest action performed on the metering policy will become effective
	UpdateEffectiveAt: string
}
