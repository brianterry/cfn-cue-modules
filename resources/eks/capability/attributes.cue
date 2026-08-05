package capability

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the capability.
	Arn: string
	// The current status of the capability. Valid values include: CREATING (the capability is being created), ACTIVE (the capability is running and available), UPDATING (the capability is being updated), DELETING (the capability is being deleted), CREATE_FAILED (the capability creation failed), UPDATE_FAILED (the capability update failed), or DELETE_FAILED (the capability deletion failed).
	Status: string
	// The Unix epoch timestamp in seconds for when the capability was created.
	CreatedAt: string
	// The Unix epoch timestamp in seconds for when the capability was last modified.
	ModifiedAt: string
	// The version of the capability software that is currently running.
	Version: string
	// The configuration settings for the capability. The structure of this object varies depending on the capability type. For Argo CD capabilities, you can configure IAM Identity Center integration, RBAC role mappings, and network access settings.
	Configuration: #CapabilityConfiguration
}
