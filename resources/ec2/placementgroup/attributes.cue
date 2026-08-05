package placementgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Group Name of Placement Group.
	GroupName: string
	// The ID of the placement group.
	GroupId: string
}
