package eventtrigger

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The timestamp of when the event trigger was created.
	CreatedAt: string
	// The timestamp of when the event trigger was most recently updated.
	LastUpdatedAt: string
}
