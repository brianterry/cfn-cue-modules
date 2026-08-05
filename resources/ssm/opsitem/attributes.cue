package opsitem

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the OpsItem.
	OpsItemId: string & =~"^(oi)-[0-9a-f]{12}$"
	// The ARN of the OpsItem.
	OpsItemArn: string
	// The status of the OpsItem.
	Status: string
	// The user who created the OpsItem.
	CreatedBy: string
	// The time the OpsItem was created.
	CreatedTime: string
	// The user who last modified the OpsItem.
	LastModifiedBy: string
	// The time the OpsItem was last modified.
	LastModifiedTime: string
	// The type of OpsItem.
	OpsItemType: string
	// The version of the OpsItem.
	Version: string
}
