package resolverqueryloggingconfig

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// AccountId
	OwnerId: string & strings.MinRunes(12) & strings.MaxRunes(32)
	// ResolverQueryLogConfigStatus, possible values are CREATING, CREATED, DELETED AND FAILED.
	Status: "CREATING" | "CREATED" | "DELETING" | "FAILED"
	// ShareStatus, possible values are NOT_SHARED, SHARED_WITH_ME, SHARED_BY_ME.
	ShareStatus: "NOT_SHARED" | "SHARED_WITH_ME" | "SHARED_BY_ME"
	// Count
	AssociationCount: int
	// Arn
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(600)
	// The id of the creator request.
	CreatorRequestId: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Rfc3339TimeString
	CreationTime: string & strings.MinRunes(20) & strings.MaxRunes(40)
	// ResourceId
	Id: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
