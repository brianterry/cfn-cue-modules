package workspaceipgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the IP access control group.
	Arn: string
	// The identifier of the IP access control group.
	GroupId: string & =~"^wsipg-[0-9a-z]{8,63}$"
}
