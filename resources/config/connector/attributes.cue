package connector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the connector.
	Arn: string
	// The name of the connector. AWS Config automatically assigns the name when creating the Connector.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The time at which the connector was created.
	CreatedTime: string
}
