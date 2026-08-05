package blueprint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the blueprint.
	Arn: string
	// The status of the blueprint registration.
	Status: "CREATING" | "ACTIVE" | "UPDATING" | "FAILED"
	// The date and time the blueprint was registered.
	CreatedOn: string
	// The date and time the blueprint was last modified.
	LastModifiedOn: string
	// A JSON string that indicates the list of parameter specifications for the blueprint.
	ParameterSpec: string & strings.MinRunes(1) & strings.MaxRunes(131072)
}
