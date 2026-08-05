package wirelessgateway

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id for Wireless Gateway. Returned upon successful create.
	Id: string & strings.MaxRunes(256)
	// Arn for Wireless Gateway. Returned upon successful create.
	Arn: string
}
