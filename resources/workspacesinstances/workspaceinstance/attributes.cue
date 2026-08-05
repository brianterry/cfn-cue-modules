package workspaceinstance

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier for the workspace instance
	WorkspaceInstanceId: string & =~"^wsinst-[0-9a-zA-Z]{8,63}$"
	// The current state of the workspace instance
	ProvisionState: "ALLOCATING" | "ALLOCATED" | "DEALLOCATING" | "DEALLOCATED" | "ERROR_ALLOCATING" | "ERROR_DEALLOCATING"
	EC2ManagedInstance: #EC2ManagedInstance
}
