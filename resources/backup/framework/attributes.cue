package framework

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// An Amazon Resource Name (ARN) that uniquely identifies Framework as a resource
	FrameworkArn: string
	// The date and time that a framework is created, in ISO 8601 representation. The value of CreationTime is accurate to milliseconds. For example, 2020-07-10T15:00:00.000-08:00 represents the 10th of July 2020 at 3:00 PM 8 hours behind UTC.
	CreationTime: string
	// A framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. The statuses are:
	// `ACTIVE` when recording is turned on for all resources governed by the framework.
	// `PARTIALLY_ACTIVE` when recording is turned off for at least one resource governed by the framework.
	// `INACTIVE` when recording is turned off for all resources governed by the framework.
	// `UNAVAILABLE` when AWS Backup is unable to validate recording status at this time.
	FrameworkStatus: string
	// The deployment status of a framework. The statuses are: `CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED | FAILED`
	DeploymentStatus: string
}
