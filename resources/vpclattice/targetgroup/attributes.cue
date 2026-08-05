package targetgroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:targetgroup/tg-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	CreatedAt: string
	Id: string & =~"^tg-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(20)
	LastUpdatedAt: string
	Status: "CREATE_IN_PROGRESS" | "ACTIVE" | "DELETE_IN_PROGRESS" | "CREATE_FAILED" | "DELETE_FAILED"
}
