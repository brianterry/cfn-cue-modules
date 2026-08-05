package wirelessdevice

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Thing Arn. If there is a Thing created, this can be returned with a Get call.
	ThingName: string
	// Wireless device Id. Returned after successful create.
	Id: string & strings.MaxRunes(256)
	// Wireless device arn. Returned after successful create.
	Arn: string
}
