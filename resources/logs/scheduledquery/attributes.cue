package scheduledquery

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ScheduledQueryArn: string
	LastTriggeredTime: number
	LastExecutionStatus: "Pending" | "InvalidQuery" | "Complete" | "Failed" | "Timeout"
	CreationTime: number
	LastUpdatedTime: number
}
