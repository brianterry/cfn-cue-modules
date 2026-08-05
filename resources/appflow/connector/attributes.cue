package connector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The arn of the connector. The arn is unique for each ConnectorRegistration in your AWS account.
	ConnectorArn: string & =~"arn:.*:appflow:.*:[0-9]+:.*" & strings.MaxRunes(512)
}
