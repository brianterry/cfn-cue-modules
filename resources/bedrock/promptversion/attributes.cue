package promptversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ARN of a prompt version resource
	Arn: string & =~"^(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:prompt/[0-9a-zA-Z]{10}:[0-9]{1,20})$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Time Stamp.
	CreatedAt: string
	// Identifier for a Prompt
	PromptId: string & =~"^[0-9a-zA-Z]{10}$"
	// Time Stamp.
	UpdatedAt: string
	// Version.
	Version: string & =~"^(DRAFT|[0-9]{0,4}[1-9][0-9]{0,4})$" & strings.MinRunes(1) & strings.MaxRunes(5)
	// Name for a prompt resource.
	Name: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	// Name for a variant.
	DefaultVariant: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	// List of prompt variants
	Variants: [...#PromptVariant]
	// A KMS key ARN
	CustomerEncryptionKeyArn: string & =~"^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}
