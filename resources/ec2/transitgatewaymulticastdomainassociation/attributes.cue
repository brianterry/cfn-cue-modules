package transitgatewaymulticastdomainassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the resource.
	ResourceId: string
	// The type of resource, for example a VPC attachment.
	ResourceType: string
	// The state of the subnet association.
	State: string
}
