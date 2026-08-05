package approvalteam

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string
	VersionId: string
	NumberOfApprovers: int
	Approvers: [...#Approver]
	UpdateSessionArn: string
	CreationTime: #Timestamp
	LastUpdateTime: #Timestamp
	Status: string
	StatusCode: string
	StatusMessage: string
}
