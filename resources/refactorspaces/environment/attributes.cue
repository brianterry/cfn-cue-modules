package environment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	EnvironmentIdentifier: string & =~"^env-([0-9A-Za-z]{10}$)" & strings.MinRunes(14) & strings.MaxRunes(14)
	Arn: string & =~"^arn:(aws[a-zA-Z-]*)?:refactor-spaces:[a-zA-Z0-9\\-]+:\\w{12}:[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	TransitGatewayId: string & =~"^tgw-[-a-f0-9]{17}$" & strings.MinRunes(21) & strings.MaxRunes(21)
}
