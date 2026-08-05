package flowversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Time Stamp.
	CreatedAt: string
	Definition: #FlowDefinition
	// ARN of a IAM role
	ExecutionRoleArn: string & =~"^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/(service-role/)?.+$" & strings.MaxRunes(2048)
	// Identifier for a Flow
	FlowId: string & =~"^[0-9a-zA-Z]{10}$"
	// Name for the flow
	Name: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	Status: #FlowStatus
	// Numerical Version.
	Version: string & =~"^[0-9]{1,5}$"
	// A KMS key ARN
	CustomerEncryptionKeyArn: string & =~"^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}
