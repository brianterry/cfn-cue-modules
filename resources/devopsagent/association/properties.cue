package association

import "strings"

#Properties: {
	// The unique identifier of the AgentSpace
	AgentSpaceId: #AgentSpaceId
	// The configuration that directs how AgentSpace interacts with the given service
	Configuration: #ServiceConfiguration
	// Set of linked association IDs for parent-child relationships
	LinkedAssociationIds?: [...#AssociationId]
	// The identifier for the associated service
	ServiceId: #ServiceId
}

#AWSConfiguration: {
	// AWS Account Id corresponding to provided resources
	AccountId: string & =~"\\d{12}"
	// Account Type 'monitor' for DevOpsAgent monitoring
	AccountType: "monitor"
	// Role ARN to be assumed by DevOpsAgent to operate on behalf of customer
	AssumableRoleArn: string
	Resources?: #AWSResourceList
	Tags?: #AWSTagList
}

#AWSResource: {
	// The Amazon Resource Name (ARN) of the resource
	ResourceArn: string
	// Additional metadata for the resource
	ResourceMetadata?: {...}
	// Resource type
	ResourceType?: "AWS::CloudFormation::Stack" | "AWS::ECR::Repository" | "AWS::S3::Bucket" | "AWS::S3::Object"
}

#AzureConfiguration: {
	// Azure subscription ID corresponding to provided resources
	SubscriptionId: string
}

#DynatraceConfiguration: {
	// When set to true, enables the Agent Space to create and update webhooks for receiving notifications and events from the service
	EnableWebhookUpdates?: bool
	// Dynatrace environment id
	EnvId: string
	// List of Dynatrace resources to monitor
	Resources?: [...string]
}

#EventChannelConfiguration: {
	// When set to true, enables the Agent Space to create and update webhooks for receiving notifications and events from the service
	EnableWebhookUpdates?: bool
}

#GitHubConfiguration: {
	// Repository owner
	Owner: string
	// Type of repository owner
	OwnerType: "organization" | "user"
	// Associated Github repo ID
	RepoId: string
	// Associated Github repo name
	RepoName: string
}

#GitLabConfiguration: {
	// When set to true, enables the Agent Space to create and update webhooks for receiving notifications and events from the service
	EnableWebhookUpdates?: bool
	// GitLab instance identifier
	InstanceIdentifier?: string
	// GitLab numeric project ID
	ProjectId: string
	// Full GitLab project path (e.g., namespace/project-name)
	ProjectPath: string
}

#KeyValuePair: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(512)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#MCPServerConfiguration: {
	// The description of the MCP server
	Description?: string
	// When set to true, enables the Agent Space to create and update webhooks for receiving notifications and events from the service
	EnableWebhookUpdates?: bool
	// MCP server endpoint URL
	Endpoint?: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
	// The name of the MCP server
	Name?: string & =~"^[a-zA-Z0-9_-]+$"
	// List of MCP tools that can be used with the association
	Tools: [...string & =~"^[a-zA-Z0-9_-]+$"]
}

#MCPServerDatadogConfiguration: {
	// The description of the MCP server
	Description?: string
	// When set to true, enables the Agent Space to create and update webhooks for receiving notifications and events from the service
	EnableWebhookUpdates?: bool
	// MCP server endpoint URL
	Endpoint?: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
	// The name of the MCP server
	Name?: string & =~"^[a-zA-Z0-9_-]+$"
}

#MCPServerGrafanaConfiguration: {
	// When set to true, enables the Agent Space to create and update webhooks for receiving notifications and events from the service
	EnableWebhookUpdates?: bool
	// MCP server endpoint URL
	Endpoint: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
	// List of tool categories to enable for the Grafana MCP server
	Tools?: [..."alerting" | "annotations" | "asserts" | "cloudwatch" | "dashboard" | "datasource" | "elasticsearch" | "examples" | "incident" | "loki" | "navigation" | "oncall" | "prometheus" | "pyroscope" | "rendering" | "runpanelquery" | "search" | "searchlogs" | "sift"]
}

#MCPServerNewRelicConfiguration: {
	// New Relic Account ID
	AccountId: string & =~"^[0-9]+$" & strings.MinRunes(6)
	// MCP server endpoint URL (e.g., https://mcp.newrelic.com/mcp/)
	Endpoint: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
}

#MCPServerSigV4Configuration: {
	// List of MCP tools available for the association
	Tools: [...string & =~"^[a-zA-Z0-9_-]+$"]
}

#MCPServerSplunkConfiguration: {
	// The description of the MCP server
	Description?: string
	// When set to true, enables the Agent Space to create and update webhooks for receiving notifications and events from the service
	EnableWebhookUpdates?: bool
	// MCP server endpoint URL
	Endpoint?: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
	// The name of the MCP server
	Name?: string & =~"^[a-zA-Z0-9_-]+$"
}

#PagerDutyConfiguration: {
	// Email to be used in PagerDuty API header
	CustomerEmail: string
	// When set to true, enables the Agent Space to create and update webhooks for receiving notifications and events from the service
	EnableWebhookUpdates?: bool
	// List of PagerDuty service IDs available for the association
	Services: [...string]
}

#ServiceNowConfiguration: {
	// When set to true, enables the Agent Space to create and update webhooks for receiving notifications and events from the service
	EnableWebhookUpdates?: bool
	// ServiceNow instance ID
	InstanceId?: string
}

#SlackChannel: {
	// Slack channel ID
	ChannelId: string & =~"^[CGD][A-Z0-9]+$" & strings.MinRunes(8) & strings.MaxRunes(16)
	// Slack channel name
	ChannelName?: string
}

#SlackConfiguration: {
	TransmissionTarget: #SlackTransmissionTarget
	// Associated Slack workspace ID
	WorkspaceId: string & =~"^[TE][A-Z0-9]+$"
	// Associated Slack workspace name
	WorkspaceName: string
}

#SlackTransmissionTarget: {
	// Destination for IncidentResponse agent.
	IncidentResponseTarget: #SlackChannel
}

#SourceAwsConfiguration: {
	// AWS Account Id corresponding to provided resources
	AccountId: string & =~"\\d{12}"
	// Account Type 'source' for DevOpsAgent monitoring
	AccountType: "source"
	// Role ARN to be assumed by DevOpsAgent to operate on behalf of customer
	AssumableRoleArn: string
	Resources?: #AWSResourceList
	Tags?: #AWSTagList
}
