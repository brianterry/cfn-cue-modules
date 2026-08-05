package domain

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The time of this integration got last updated at
	LastUpdatedAt: string
	// The time of this integration got created
	CreatedAt: string
	RuleBasedMatching: #RuleBasedMatching
	Stats: #DomainStats
	DataStore: #DataStore
}
