package parameter

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"arn:aws(-[a-z0-9-]+)*:ssm:[a-z0-9-]+:[0-9]{12}:parameter/.+"
}
