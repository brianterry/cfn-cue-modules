package managedpolicy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	PolicyArn: string
	AttachmentCount: int
	CreateDate: string
	DefaultVersionId: string
	IsAttachable: bool
	PermissionsBoundaryUsageCount: int
	PolicyId: string
	UpdateDate: string
}
