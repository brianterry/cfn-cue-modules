package protection

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier (ID) of the protection.
	ProtectionId: string
	// The ARN (Amazon Resource Name) of the protection.
	ProtectionArn: string
}
