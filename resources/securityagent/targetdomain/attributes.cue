package targetdomain

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier of the target domain
	TargetDomainId: string
	// Current verification status of the registered target domain
	VerificationStatus: "PENDING" | "VERIFIED" | "FAILED" | "UNREACHABLE"
	// Reason for the current target domain verification status
	VerificationStatusReason: string
	VerificationDetails: #VerificationDetails
	// Timestamp when the target domain was registered
	CreatedAt: string
	// Timestamp when the target domain was last successfully verified
	VerifiedAt: string
}
