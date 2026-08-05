package connector

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	ConnectorArn: string & =~"^arn:aws\\S*:securityhub:[a-z0-9-]+:[0-9]{12}:connector/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
	ConnectorId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
	ConnectorStatus: #ConnectorStatus
	Message: string
	LastCheckedAt: #ISO8601DateString
	CreatedAt: #ISO8601DateString
	LastUpdatedAt: #ISO8601DateString
	CreatedBy: string
	EnablementStatus: #EnablementStatus
	Issues: [...#HealthIssue]
}
