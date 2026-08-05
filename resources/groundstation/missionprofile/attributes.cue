package missionprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string
	Arn: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
	Region: string
}
