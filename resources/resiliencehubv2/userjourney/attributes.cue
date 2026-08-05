package userjourney

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The server-generated user journey ID.
	UserJourneyId: string & =~"^\\S{1,255}$"
	// The timestamp when the user journey was created.
	CreatedAt: string
	// The timestamp when the user journey was last updated.
	UpdatedAt: string
}
