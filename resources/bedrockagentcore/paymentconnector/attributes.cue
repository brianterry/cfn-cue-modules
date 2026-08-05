package paymentconnector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier for the payment connector
	PaymentConnectorId: string & =~"^([0-9a-z][-]?){1,100}-[0-9a-z]{10}$"
	// Synthetic ARN for the payment connector (used for engine resolution)
	PaymentConnectorArn: string & =~"^arn:aws[-a-z]{0,7}:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:payment-manager/[a-z0-9-]+/connector/[a-z0-9-]+$"
	ConnectorStatus: #PaymentConnectorStatus
	// The timestamp when the connector was created
	ConnectorCreatedAt: string
	// The timestamp when the connector was last updated
	ConnectorLastUpdatedAt: string
}
