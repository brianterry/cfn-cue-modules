package prompt

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ARN of a prompt resource possibly with a version
	Arn: string & =~"^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:prompt/[0-9a-zA-Z]{10})$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Time Stamp.
	CreatedAt: string
	// Identifier for a Prompt
	Id: string & =~"^[0-9a-zA-Z]{10}$"
	// Time Stamp.
	UpdatedAt: string
	// Draft Version.
	Version: string & =~"^DRAFT$" & strings.MinRunes(5) & strings.MaxRunes(5)
}
