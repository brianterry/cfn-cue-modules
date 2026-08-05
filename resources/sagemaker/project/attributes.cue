package project

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ProjectArn: #ProjectArn
	// The time at which the project was created.
	CreationTime: string
	ProjectId: #ProjectId
	// The status of a project.
	ProjectStatus: "Pending" | "CreateInProgress" | "CreateCompleted" | "CreateFailed" | "DeleteInProgress" | "DeleteFailed" | "DeleteCompleted"
}
