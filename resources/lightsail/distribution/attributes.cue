package distribution

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	DistributionArn: string
	// The status of the distribution.
	Status: string
	// Indicates whether the bundle that is currently applied to your distribution, specified using the distributionName parameter, can be changed to another bundle.
	AbleToUpdateBundle: bool
}
