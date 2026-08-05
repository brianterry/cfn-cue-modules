package recoverygroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A collection of tags associated with a resource.
	RecoveryGroupArn: string & strings.MaxRunes(256)
}
