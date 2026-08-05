package delegatedadmin

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	DelegatedAdminIdentifier: string & =~"^[0-9]{12}/[a-zA-Z0-9-]{1,32}$"
	Status: "ENABLED" | "DISABLE_IN_PROGRESS"
}
