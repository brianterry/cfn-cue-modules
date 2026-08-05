package telemetryrule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The arn of the telemetry rule
	RuleArn: string & =~"^arn:aws([a-z0-9\\-]+)?:([a-zA-Z0-9\\-]+):([a-z0-9\\-]+)?:([0-9]{12})?:(.+)$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	// Per-region replication status of the rule
	RegionStatuses: [...#RegionStatus]
}
