package virtualmfadevice

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	SerialNumber: string & =~"[\\w+=/:,.@-]+" & strings.MinRunes(9) & strings.MaxRunes(256)
}
