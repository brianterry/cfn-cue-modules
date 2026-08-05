package hubv2

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name of the Security Hub V2 resource.
	HubV2Arn: string & =~"arn:aws(?:-[a-z]+)*:securityhub:[a-z0-9-]+:\\d{12}:hubv2/[^/](.{0,1022}[^/:])?$"
	SubscribedAt: #ISO8601DateString
}
