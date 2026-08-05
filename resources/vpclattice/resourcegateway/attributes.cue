package resourcegateway

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string & =~"^((rgw-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourcegateway/rgw-[0-9a-z]{17}))$" & strings.MinRunes(17) & strings.MaxRunes(2048)
	Arn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourcegateway/rgw-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}
