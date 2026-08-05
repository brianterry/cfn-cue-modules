package layout

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The time at which the layout was created.
	CreatedTime: string
	// The time at which the layout was created or last modified.
	LastModifiedTime: string
	// The Amazon Resource Name (ARN) of the layout.
	LayoutArn: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The unique identifier of the layout.
	LayoutId: string & strings.MinRunes(1) & strings.MaxRunes(500)
}
