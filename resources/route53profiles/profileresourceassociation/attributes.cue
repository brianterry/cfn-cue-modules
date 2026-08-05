package profileresourceassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Primary Identifier for  Profile Resource Association
	Id: string
	// The type of the resource associated to the  Profile.
	ResourceType: string
}
