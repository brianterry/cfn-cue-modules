package calculatedattributedefinition

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The timestamp of when the calculated attribute definition was created.
	CreatedAt: string
	// The timestamp of when the calculated attribute definition was most recently edited.
	LastUpdatedAt: string
	// The status of the calculated attribute definition.
	Status: "IN_PROGRESS" | "PREPARING" | "COMPLETED" | "FAILED"
	Readiness: #Readiness
}
