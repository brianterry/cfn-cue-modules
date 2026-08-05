package lens

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the lens.
	LensArn: string
	// The unique identifier of the lens.
	LensId: string
	// The full name of the lens.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The description of the lens.
	Description: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The Amazon Web Services account ID that owns the lens.
	Owner: string
}
