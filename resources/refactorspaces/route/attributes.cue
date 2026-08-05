package route

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	RouteIdentifier: string & =~"^rte-([0-9A-Za-z]{10}$)" & strings.MinRunes(14) & strings.MaxRunes(14)
	PathResourceToId: string
	Arn: string & =~"^arn:(aws[a-zA-Z-]*)?:refactor-spaces:[a-zA-Z0-9\\-]+:\\w{12}:[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}
