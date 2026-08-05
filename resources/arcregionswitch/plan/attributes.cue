package plan

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:aws[a-zA-Z-]*:arc-region-switch::[0-9]{12}:plan/([a-zA-Z0-9](?:[a-zA-Z0-9-]{0,30}[a-zA-Z0-9])?):([a-z0-9]{6})$"
	Owner: string & =~"^\\d{12}$"
	Version: string
	HealthChecksForPlan: {...}
	Route53HealthChecks: {
	HealthCheckIds?: #HealthCheckIds
	HostedZoneIds?: #HostedZoneIds
	RecordNames?: #HealthCheckRecordNames
	Regions?: #HealthCheckRegions
}
	PlanHealthChecks: [...string]
}
