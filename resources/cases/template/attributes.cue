package template

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The time at which the template was created.
	CreatedTime: string
	// The time at which the template was created or last modified.
	LastModifiedTime: string
	// The Amazon Resource Name (ARN) of the template.
	TemplateArn: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The unique identifier of a template.
	TemplateId: string & strings.MinRunes(1) & strings.MaxRunes(500)
}
