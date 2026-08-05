package flow

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Arn representation of the Flow
	Arn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10}$" & strings.MinRunes(20) & strings.MaxRunes(1011)
	// Time Stamp.
	CreatedAt: string
	// Identifier for a Flow
	Id: string & =~"^[0-9a-zA-Z]{10}$"
	Status: #FlowStatus
	// Time Stamp.
	UpdatedAt: string
	// Draft Version.
	Version: string & =~"^DRAFT$" & strings.MinRunes(5) & strings.MaxRunes(5)
	Validations: #FlowValidations
}
