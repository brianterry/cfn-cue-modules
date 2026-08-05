package profile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ProfileId: string & =~"[a-f0-9]{8}-([a-z0-9]{4}-){3}[a-z0-9]{12}"
	ProfileArn: string
}
