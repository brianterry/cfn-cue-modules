package servicenetworkvpcassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkvpcassociation/snva-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	CreatedAt: string
	Id: string & =~"^snva-[0-9a-z]{17}$" & strings.MinRunes(22) & strings.MaxRunes(22)
	ServiceNetworkArn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetwork/sn-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	ServiceNetworkId: string & =~"^sn-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(20)
	ServiceNetworkName: string & =~"^(?!servicenetwork-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	Status: "CREATE_IN_PROGRESS" | "ACTIVE" | "UPDATE_IN_PROGRESS" | "DELETE_IN_PROGRESS" | "CREATE_FAILED" | "DELETE_FAILED"
	VpcId: string & =~"^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$" & strings.MinRunes(5) & strings.MaxRunes(2048)
}
