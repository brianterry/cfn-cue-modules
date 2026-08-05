package listener

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Id: string & =~"^listener-[0-9a-z]{17}$" & strings.MinRunes(26) & strings.MaxRunes(26)
	ServiceArn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}$" & strings.MinRunes(21) & strings.MaxRunes(2048)
	ServiceId: string & =~"^svc-[0-9a-z]{17}$" & strings.MinRunes(21) & strings.MaxRunes(21)
}
