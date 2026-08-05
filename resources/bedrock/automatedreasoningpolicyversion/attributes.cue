package automatedreasoningpolicyversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Version: #Version
	Name: #Name
	Description: #Description
	CreatedAt: #CreatedAt
	UpdatedAt: #UpdatedAt
	PolicyId: #PolicyId
	DefinitionHash: #DefinitionHash
}
