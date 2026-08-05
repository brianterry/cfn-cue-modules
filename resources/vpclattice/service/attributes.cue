package service

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	CreatedAt: string
	DnsEntry: #DnsEntry
	Id: string & =~"^svc-[0-9a-z]{17}$" & strings.MinRunes(21) & strings.MaxRunes(21)
	LastUpdatedAt: string
	Status: "ACTIVE" | "CREATE_IN_PROGRESS" | "DELETE_IN_PROGRESS" | "CREATE_FAILED" | "DELETE_FAILED"
}
