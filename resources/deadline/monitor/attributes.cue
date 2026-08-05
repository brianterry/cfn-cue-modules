package monitor

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	IdentityCenterApplicationArn: string
	MonitorId: string & =~"^monitor-[0-9a-f]{32}$"
	Url: string
	Arn: string & =~"^arn:(aws[a-zA-Z-]*):deadline:[a-z0-9-]+:[0-9]+:monitor/monitor-[0-9a-z]{32}$"
}
