package connectorv2

import "strings"

#Properties: {
	// A description of the connector
	Description?: string & =~".*\\S.*" & strings.MinRunes(0) & strings.MaxRunes(256)
	// The ARN of KMS key used for the connector
	KmsKeyArn?: string & =~".*\\S.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The name of the connector
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(64)
	Provider: #Provider
	Tags?: #Tags
}

#AuthStatus: "ACTIVE" | "FAILED"

#AzureProviderConfiguration: {
	// The ARN of the AWS Config connector used for the Azure integration
	AWSConfigConnectorArn: string
	// The list of Azure regions to include in the connector scope
	AzureRegions: [...string]
	ScopeConfiguration: #AzureScopeConfiguration
}

#AzureScopeConfiguration: {
	// The scope type for the Azure connector
	ScopeType: "TENANT" | "SUBSCRIPTION"
	// The list of scope values for the Azure connector
	ScopeValues?: [...string]
}

#HealthIssue: {
	// The code identifying the type of health issue
	Code: string
	// The message describing the health issue
	Message: string
}

#ISO8601DateString: string & =~"^(\\d\\d\\d\\d)-([0][1-9]|[1][0-2])-([0][1-9]|[1-2](\\d)|[3][0-1])[T](?:([0-1](\\d)|[2][0-3]):[0-5](\\d):[0-5](\\d)|23:59:60)(?:\\.(\\d)+)?([Z]|[+-](\\d\\d)(:?(\\d\\d))?)$"

#JiraCloudProviderConfiguration: {
	// The project key for a Jira Cloud instance
	ProjectKey: string & strings.MinRunes(2) & strings.MaxRunes(10)
}

#Provider: {
	JiraCloud: #JiraCloudProviderConfiguration
} | {
	ServiceNow: #ServiceNowProviderConfiguration
} | {
	Azure: #AzureProviderConfiguration
}

#ServiceNowProviderConfiguration: {
	// The instance name of ServiceNow ITSM
	InstanceName: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the ServiceNow credentials
	SecretArn: string & =~".*\\S.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#Tags: {...}
