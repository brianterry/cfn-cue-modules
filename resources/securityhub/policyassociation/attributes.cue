package policyassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The current status of the association between the specified target and the configuration
	AssociationStatus: "SUCCESS" | "PENDING" | "FAILED"
	// Indicates whether the association between the specified target and the configuration was directly applied by the Security Hub delegated administrator or inherited from a parent
	AssociationType: "APPLIED" | "INHERITED"
	// An explanation for a FAILED value for AssociationStatus
	AssociationStatusMessage: string
	// The date and time, in UTC and ISO 8601 format, that the configuration policy association was last updated
	UpdatedAt: string
	// A unique identifier to indicates if the target has an association
	AssociationIdentifier: string
}
