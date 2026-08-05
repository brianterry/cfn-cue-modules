package connector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Specifies the unique Amazon Resource Name (ARN) for the connector.
	Arn: string & =~"arn:.*" & strings.MinRunes(20) & strings.MaxRunes(1600)
	// A unique identifier for the connector.
	ConnectorId: string & =~"^c-([0-9a-f]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
	// The list of egress IP addresses of this connector. These IP addresses are assigned automatically when you create the connector.
	ServiceManagedEgressIpAddresses: [...string & =~"^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"]
	Status: #ConnectorStatus
	// Detailed error message when Connector in ERRORED status
	ErrorMessage: string & strings.MaxRunes(2048)
}
