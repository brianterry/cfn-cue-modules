package trustedentityset

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string
	Status: "INACTIVE" | "ACTIVATING" | "ACTIVE" | "DEACTIVATING" | "ERROR" | "DELETE_PENDING" | "DELETED"
	CreatedAt: string
	UpdatedAt: string
	ErrorDetails: string
}
