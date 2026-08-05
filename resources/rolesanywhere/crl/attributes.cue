package crl

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CrlId: string & =~"[a-f0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}"
}
