package connectorv2

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the connector
	ConnectorArn: string & =~"^arn:aws\\S*:securityhub:[a-z0-9-]+:[0-9]{12}:connectorv2/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
	// The ID of the connector
	ConnectorId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
	// The message of the connector status change
	Message: string
	// The status of the connector
	ConnectorStatus: string
	LastUpdatedAt: #ISO8601DateString
	LastCheckedAt: #ISO8601DateString
	CreatedAt: #ISO8601DateString
	// The enablement status of the connector
	EnablementStatus: string
	// The reason for the enablement status of the connector
	EnablementStatusReason: string
	// The list of health issues associated with the connector
	Issues: [...#HealthIssue]
}
