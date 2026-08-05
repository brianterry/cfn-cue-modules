package automatedreasoningpolicy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Version: #Version
	PolicyId: #PolicyId
	PolicyArn: #PolicyArn
	DefinitionHash: #DefinitionHash
	CreatedAt: #CreatedAt
	UpdatedAt: #UpdatedAt
	KmsKeyArn: #KmsKeyArn
}
