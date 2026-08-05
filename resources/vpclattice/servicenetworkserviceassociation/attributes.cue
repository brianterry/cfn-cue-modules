package servicenetworkserviceassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkserviceassociation/snsa-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	CreatedAt: string
	DnsEntry: #DnsEntry
	Id: string & =~"^snsa-[0-9a-z]{17}$" & strings.MinRunes(17) & strings.MaxRunes(2048)
	ServiceNetworkArn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetwork/sn-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	ServiceNetworkId: string & =~"^sn-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(20)
	ServiceNetworkName: string & =~"^(?!servicenetwork-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	ServiceArn: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	ServiceId: string & =~"^svc-[0-9a-z]{17}$" & strings.MinRunes(21) & strings.MaxRunes(21)
	ServiceName: string & =~"^(?!svc-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(40)
	Status: "CREATE_IN_PROGRESS" | "ACTIVE" | "DELETE_IN_PROGRESS" | "CREATE_FAILED" | "DELETE_FAILED"
}
