package group

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the group that was generated on creation.
	GroupARN: string & strings.MinRunes(1) & strings.MaxRunes(400)
}
