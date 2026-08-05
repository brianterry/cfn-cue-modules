package volume

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier for the volume
	VolumeId: string & =~"^vol-[0-9a-zA-Z]{1,63}$"
}
