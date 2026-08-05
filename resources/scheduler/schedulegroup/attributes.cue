package schedulegroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the schedule group.
	Arn: string & =~"^arn:aws[a-z-]*:scheduler:[a-z0-9\\-]+:\\d{12}:schedule-group\\/[0-9a-zA-Z-_.]+$" & strings.MinRunes(1) & strings.MaxRunes(1224)
	// The time at which the schedule group was created.
	CreationDate: string
	// The time at which the schedule group was last modified.
	LastModificationDate: string
	State: #ScheduleGroupState
}
