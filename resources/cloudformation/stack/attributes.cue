package stack

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	StackId: string
	StackStatus: "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "CREATE_COMPLETE" | "ROLLBACK_IN_PROGRESS" | "ROLLBACK_FAILED" | "ROLLBACK_COMPLETE" | "DELETE_IN_PROGRESS" | "DELETE_FAILED" | "DELETE_COMPLETE" | "UPDATE_IN_PROGRESS" | "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS" | "UPDATE_COMPLETE" | "UPDATE_FAILED" | "UPDATE_ROLLBACK_IN_PROGRESS" | "UPDATE_ROLLBACK_FAILED" | "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS" | "UPDATE_ROLLBACK_COMPLETE" | "REVIEW_IN_PROGRESS" | "IMPORT_IN_PROGRESS" | "IMPORT_COMPLETE" | "IMPORT_ROLLBACK_IN_PROGRESS" | "IMPORT_ROLLBACK_FAILED" | "IMPORT_ROLLBACK_COMPLETE"
	CreationTime: string
	RootId: string
	ParentId: string
	ChangeSetId: string
	Outputs: [...#Output]
	LastUpdateTime: string
}
