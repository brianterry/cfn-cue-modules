package resolverqueryloggingconfigassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ResolverQueryLogConfigAssociationStatus
	Status: "CREATING" | "ACTIVE" | "ACTION_NEEDED" | "DELETING" | "FAILED" | "OVERRIDDEN"
	// ResolverQueryLogConfigAssociationError
	Error: "NONE" | "DESTINATION_NOT_FOUND" | "ACCESS_DENIED"
	// ResolverQueryLogConfigAssociationErrorMessage
	ErrorMessage: string
	// Rfc3339TimeString
	CreationTime: string & strings.MinRunes(20) & strings.MaxRunes(40)
	// Id
	Id: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
