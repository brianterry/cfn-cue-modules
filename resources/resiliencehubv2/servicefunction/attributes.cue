package servicefunction

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The server-generated service function ID.
	ServiceFunctionId: string
	// The number of resources associated with this function.
	ResourceCount: int
	// The source of the service function.
	Source: "AI_GENERATED" | "USER"
	// The timestamp when the service function was created.
	CreatedAt: string
	// The timestamp when the service function was last updated.
	UpdatedAt: string
}
