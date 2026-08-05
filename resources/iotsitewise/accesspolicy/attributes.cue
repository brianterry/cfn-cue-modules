package accesspolicy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the access policy.
	AccessPolicyArn: string
	// The ID of the access policy.
	AccessPolicyId: string
}
