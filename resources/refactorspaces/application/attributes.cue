package application

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ApplicationIdentifier: string & =~"^app-([0-9A-Za-z]{10}$)" & strings.MinRunes(14) & strings.MaxRunes(14)
	Arn: string & =~"^arn:(aws[a-zA-Z-]*)?:refactor-spaces:[a-zA-Z0-9\\-]+:\\w{12}:[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	ApiGatewayId: string & =~"^[a-z0-9]{10}$" & strings.MinRunes(10) & strings.MaxRunes(10)
	VpcLinkId: string & =~"^[a-z0-9]{10}$" & strings.MinRunes(10) & strings.MaxRunes(10)
	NlbArn: string & =~"^arn:(aws[a-zA-Z-]*)?:elasticloadbalancing:[a-zA-Z0-9\\\\-]+:\\\\w{12}:[a-zA-Z_0-9+=,.@\\\\-_\\/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	NlbName: string & =~"^(?!internal-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+.*[^-]$" & strings.MinRunes(1) & strings.MaxRunes(32)
	ProxyUrl: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	StageName: string & =~"^[-a-zA-Z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
}
