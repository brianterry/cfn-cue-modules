package servicenetworkresourceassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Id: string & =~"^snra-[0-9a-f]{17}$" & strings.MinRunes(22) & strings.MaxRunes(22)
	Arn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkresourceassociation/snra-[0-9a-f]{17}$" & strings.MinRunes(22) & strings.MaxRunes(2048)
}
