package componenttype

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the component type.
	Arn: string & =~"arn:((aws)|(aws-cn)|(aws-us-gov)):iottwinmaker:[a-z0-9-]+:[0-9]{12}:[\\/a-zA-Z0-9_\\-\\.:]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The date and time when the component type was created.
	CreationDateTime: #DateTimeFormat
	// The last date and time when the component type was updated.
	UpdateDateTime: #DateTimeFormat
	// The current status of the component type.
	Status: #Status
	// A Boolean value that specifies whether the component type is abstract.
	IsAbstract: bool
	// A Boolean value that specifies whether the component type has a schema initializer and that the schema initializer has run.
	IsSchemaInitialized: bool
}
