package scheduledaudit

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN (Amazon resource name) of the scheduled audit.
	ScheduledAuditArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}
