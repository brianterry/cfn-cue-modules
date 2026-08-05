package entity

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the entity.
	Arn: string & =~"arn:((aws)|(aws-cn)|(aws-us-gov)):iottwinmaker:[a-z0-9-]+:[0-9]{12}:[\\/a-zA-Z0-9_\\-\\.:]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The date and time when the entity was created.
	CreationDateTime: #DateTimeFormat
	// The last date and time when the entity was updated.
	UpdateDateTime: #DateTimeFormat
	// The current status of the entity.
	Status: #Status
	// A Boolean value that specifies whether the entity has child entities or not.
	HasChildEntities: bool
}
