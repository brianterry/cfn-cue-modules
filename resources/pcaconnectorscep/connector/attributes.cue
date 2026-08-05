package connector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ConnectorArn: string & =~"^arn:aws(-[a-z]+)*:pca-connector-scep:[a-z]+(-[a-z]+)+-[1-9]\\d*:\\d{12}:connector\\/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}$" & strings.MinRunes(5) & strings.MaxRunes(200)
	Endpoint: string & strings.MinRunes(5) & strings.MaxRunes(200)
	OpenIdConfiguration: #OpenIdConfiguration
	Type: #ConnectorType
}
