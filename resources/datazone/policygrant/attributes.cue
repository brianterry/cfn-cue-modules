package policygrant

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the policy grant returned by the AddPolicyGrant API
	GrantId: string & =~"^[A-Za-z0-9+/]{10}$"
	// Specifies the timestamp at which policy grant member was created.
	CreatedAt: string
	// Specifies the user who created the policy grant member.
	CreatedBy: string
}
