package multiplex

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique arn of the multiplex.
	Arn: string
	// The unique id of the multiplex.
	Id: string
	// The number of currently healthy pipelines.
	PipelinesRunningCount: int
	// The number of programs in the multiplex.
	ProgramCount: int
	State: "CREATING" | "CREATE_FAILED" | "IDLE" | "STARTING" | "RUNNING" | "RECOVERING" | "STOPPING" | "DELETING" | "DELETED"
}
