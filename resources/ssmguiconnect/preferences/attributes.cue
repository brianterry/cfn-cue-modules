package preferences

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The AWS Account Id that the preference is associated with, used as the unique identifier for this resource.
	AccountId: string & =~"\\d{12}"
}
