package modelpackagegroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ModelPackageGroupArn: #ModelPackageGroupArn
	// The time at which the model package group was created.
	CreationTime: string
	// The status of a modelpackage group job.
	ModelPackageGroupStatus: "Pending" | "InProgress" | "Completed" | "Failed" | "Deleting" | "DeleteFailed"
}
