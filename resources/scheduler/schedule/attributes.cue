package schedule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the schedule.
	Arn: string & =~"^arn:aws[a-z-]*:scheduler:[a-z0-9\\-]+:\\d{12}:schedule\\/[0-9a-zA-Z-_.]+\\/[0-9a-zA-Z-_.]+$" & strings.MinRunes(1) & strings.MaxRunes(1224)
}
