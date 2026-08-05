package monitor

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the monitor.
	Arn: string & =~"^arn:.*$" & strings.MinRunes(20) & strings.MaxRunes(512)
	// The status of the monitor.
	MonitorStatus: "PENDING" | "ACTIVE" | "INACTIVE" | "ERROR" | "DELETING"
	// The date and time when the monitor was created.
	CreatedAt: string
	// The date and time when the monitor was last modified.
	ModifiedAt: string
}
