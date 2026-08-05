package task

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the task.
	TaskArn: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]*:[0-9]{12}:task/task-[0-9a-f]{17}$" & strings.MaxRunes(128)
	// The status of the task that was described.
	Status: "AVAILABLE" | "CREATING" | "QUEUED" | "RUNNING" | "UNAVAILABLE"
	SourceNetworkInterfaceArns: #SourceNetworkInterfaceArns
	DestinationNetworkInterfaceArns: #DestinationNetworkInterfaceArns
}
