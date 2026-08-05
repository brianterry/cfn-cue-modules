package experiment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*/experiment/[-a-zA-Z0-9._]*"
}
