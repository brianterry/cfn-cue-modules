package snapshotschedule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the snapshot schedule.
	Arn: string
	// The number of clusters associated with the schedule.
	AssociatedClusterCount: int
}
