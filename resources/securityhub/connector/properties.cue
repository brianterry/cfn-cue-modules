package connector

#Properties: {
	// The description of the connector.
	Description?: string
	// The name of the connector.
	Name: string
	Provider: #Provider
	Tags?: #Tags
}

#AzureProviderConfiguration: {
	// The ARN of the multi-cloud configuration connector used to establish the connection to Azure.
	AWSConfigConnectorArn: string
	// The list of Azure regions to monitor.
	AzureRegions: [...string]
	// The scope configuration that defines which Azure resources are monitored.
	ScopeConfiguration: #AzureScopeConfiguration
}

#AzureScopeConfiguration: {
	// The type of scope. Valid values are ``tenant`` and ``subscription``.
	ScopeType: "TENANT" | "SUBSCRIPTION"
	// The list of scope values, such as subscription IDs, when the scope type is ``subscription``.
	ScopeValues?: [...string]
}

#ConnectorStatus: string

#EnablementStatus: string

#HealthIssue: {
	// The error code that identifies the type of health issue.
	Code: #HealthIssueCode
	// A human-readable message that describes the health issue.
	Message: string
}

#HealthIssueCode: string

#ISO8601DateString: string & =~"^(\\d\\d\\d\\d)-([0][1-9]|[1][0-2])-([0][1-9]|[1-2](\\d)|[3][0-1])[T](?:([0-1](\\d)|[2][0-3]):[0-5](\\d):[0-5](\\d)|23:59:60)(?:\\.(\\d)+)?([Z]|[+-](\\d\\d)(:?(\\d\\d))?)$"

#Provider: {
	Azure: #AzureProviderConfiguration
}

#Tags: {...}
