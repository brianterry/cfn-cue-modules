package connectorprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier for connector profile resources
	ConnectorProfileArn: string & =~"arn:aws:appflow:.*:[0-9]+:.*" & strings.MaxRunes(512)
	// A unique Arn for Connector-Profile resource
	CredentialsArn: string & =~"arn:aws:.*:.*:[0-9]+:.*" & strings.MaxRunes(512)
}
