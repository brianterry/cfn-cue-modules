package monitoringschedule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the monitoring schedule.
	MonitoringScheduleArn: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The time at which the schedule was created.
	CreationTime: string
	// A timestamp that indicates the last time the monitoring job was modified.
	LastModifiedTime: string
}
