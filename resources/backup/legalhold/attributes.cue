package legalhold

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the legal hold.
	Arn: string
	// The ID of the legal hold.
	LegalHoldId: string
	// The status of the legal hold.
	Status: "CREATING" | "ACTIVE" | "CANCELING" | "CANCELED"
	// The time when the legal hold was created.
	CreationDate: string
}
