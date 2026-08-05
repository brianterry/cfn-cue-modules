package accesslogsubscription

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:accesslogsubscription/als-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Id: string & =~"^als-[0-9a-z]{17}$" & strings.MinRunes(21) & strings.MaxRunes(21)
	ResourceArn: string & =~"^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:((servicenetwork/sn)|(service/svc)|(resourceconfiguration/rcfg))-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	ResourceId: string & =~"^((sn)|(svc))-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}
