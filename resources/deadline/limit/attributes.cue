package limit

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	CurrentCount: int & >=0 & <=2147483647
	LimitId: string & =~"^limit-[0-9a-f]{32}$"
}
