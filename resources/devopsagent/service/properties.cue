package service

import "strings"

#Properties: {
	// The name of the private connection to use for OAuth token exchange requests only. Cannot be specified when PrivateConnectionName is provided.
	ExchangeUrlPrivateConnectionName?: string & =~"^[a-z0-9]([a-z0-9-]*[a-z0-9])?$" & strings.MinRunes(3) & strings.MaxRunes(30)
	// The ARN of the KMS key to use for encryption.
	KmsKeyArn?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The name of the private connection to use for VPC connectivity.
	PrivateConnectionName?: string & =~"^[a-z0-9]([a-z0-9-]*[a-z0-9])?$" & strings.MinRunes(3) & strings.MaxRunes(30)
	// Service-specific configuration details for create operation
	ServiceDetails?: #ServiceDetails
	// The type of service being registered
	ServiceType: #ServiceType
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The name of the private connection to use for API calls (target URL) only. Cannot be specified when PrivateConnectionName is provided.
	TargetUrlPrivateConnectionName?: string & =~"^[a-z0-9]([a-z0-9-]*[a-z0-9])?$" & strings.MinRunes(3) & strings.MaxRunes(30)
}

#ApiKeyDetails: {
	// HTTP header name to send the API key
	ApiKeyHeader: string & =~"^[a-zA-Z0-9-]+$"
	// User friendly API key name
	ApiKeyName: string & =~"^[a-zA-Z0-9_\\s-]+$"
	// API key value
	ApiKeyValue: string & =~"^[!-~]([ \\t]*[!-~])*$"
}

#AzureIdentityServiceDetails: {
	// Azure AD application client ID
	ClientId: string & =~"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
	// Azure AD tenant ID
	TenantId: string & =~"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
	// ARN of the IAM role for web identity token exchange
	WebIdentityRoleArn: string & =~"^arn:aws[a-zA-Z-]*:iam::[0-9]{12}:role/.+$"
	// List of audiences for the web identity token
	WebIdentityTokenAudiences: [...string]
}

#BearerTokenDetails: {
	// HTTP header name to send the bearer token
	AuthorizationHeader?: string & =~"^[a-zA-Z0-9-]+$"
	// User friendly bearer token name
	TokenName: string & =~"^[a-zA-Z0-9_\\s-]+$"
	// Bearer token value
	TokenValue: string & =~"^[\\S]+$"
}

#DynatraceAuthorizationConfig: {
	OAuthClientCredentials?: #OAuthClientDetails
}

#DynatraceServiceDetails: {
	// Dynatrace resource account URN
	AccountUrn: string
	AuthorizationConfig?: #DynatraceAuthorizationConfig
}

#GitLabDetails: {
	// Optional GitLab group ID for group-level access tokens
	GroupId?: string
	// GitLab instance URL
	TargetUrl: string & =~"^https://[a-zA-Z0-9]([a-zA-Z0-9.-]*[a-zA-Z0-9])?(?::[0-9]{1,5})?/?$"
	// Type of GitLab access token
	TokenType: "personal" | "group"
	// GitLab access token value
	TokenValue: string & =~"^glpat-[a-zA-Z0-9._-]+$"
}

#MCPServerDetails: {
	AuthorizationConfig: #MCPServerAuthorizationConfig
	// Optional description for the MCP server
	Description?: string & strings.MaxRunes(500)
	// MCP server endpoint URL
	Endpoint: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
	// MCP server name
	Name: string & =~"^[a-zA-Z0-9_-]+$"
}

#MCPServerGrafanaDetails: {
	AuthorizationConfig: #MCPServerGrafanaAuthorizationConfig
	// Optional description for the MCP server
	Description?: string & strings.MaxRunes(500)
	// MCP server endpoint URL
	Endpoint: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
	// MCP server name
	Name: string & =~"^[a-zA-Z0-9_-]+$"
}

#MCPServerOAuthClientCredentialsConfig: {
	// OAuth client ID
	ClientId: string
	// User friendly OAuth client name
	ClientName?: string
	// OAuth client secret
	ClientSecret: string
	// OAuth token exchange parameters
	ExchangeParameters?: {...}
	// OAuth token exchange URL
	ExchangeUrl: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
	// OAuth scopes
	Scopes?: [...string]
}

#MCPServerSigV4AuthorizationConfig: {
	// Custom headers for the SigV4 MCP server
	CustomHeaders?: {...}
	// IAM role ARN to assume for SigV4 signing. Optional - when omitted, credentials are resolved at runtime via a monitor account association.
	McpRoleArn?: string & =~"^arn:aws:iam::\\d{12}:role/[a-zA-Z0-9+=,.@_/-]+$"
	// AWS region for SigV4 signing. Use '*' for SigV4a multi-region signing.
	Region: string & =~"^(\\*|[a-z]{2,4}(-[a-z]+)+-\\d+)$"
	// Deprecated - use McpRoleArn instead. IAM role ARN to assume for SigV4 signing
	RoleArn?: string & =~"^arn:aws:iam::\\d{12}:role/[a-zA-Z0-9+=,.@_/-]+$"
	// AWS service name for SigV4 signing
	Service: string & strings.MinRunes(1) & strings.MaxRunes(100)
}

#MCPServerSigV4Details: {
	AuthorizationConfig: #MCPServerSigV4AuthorizationConfig
	// Optional description for the MCP server
	Description?: string & strings.MaxRunes(500)
	// MCP server endpoint URL
	Endpoint: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
	// MCP server name
	Name: string & =~"^[a-zA-Z0-9_-]+$"
}

#MCPServerSplunkDetails: {
	AuthorizationConfig: #MCPServerSplunkAuthorizationConfig
	// Optional description for the MCP server
	Description?: string & strings.MaxRunes(500)
	// MCP server endpoint URL
	Endpoint: string & =~"^https://[a-zA-Z0-9.-]+(?::[0-9]+)?(?:/.*)?$"
	// MCP server name
	Name: string & =~"^[a-zA-Z0-9_-]+$"
}

#NewRelicApiKeyConfig: {
	// New Relic Account ID
	AccountId: string & =~"^[0-9]+$"
	// List of alert policy IDs
	AlertPolicyIds?: [...string & =~"^[0-9]+$"]
	// New Relic User API Key
	ApiKey: string & =~"^NRAK-[A-Z0-9]+$"
	// List of monitored APM application IDs
	ApplicationIds?: [...string & =~"^[0-9]+$"]
	// List of globally unique IDs for New Relic resources
	EntityGuids?: [...string & =~"^[a-zA-Z0-9_.-]+$"]
	// New Relic region
	Region: "US" | "EU"
}

#NewRelicAuthorizationConfig: {
	ApiKey: #NewRelicApiKeyConfig
}

#NewRelicServiceDetails: {
	AuthorizationConfig: #NewRelicAuthorizationConfig
}

#OAuthClientDetails: {
	// OAuth client ID
	ClientId: string
	// User friendly OAuth client name
	ClientName?: string
	// OAuth client secret
	ClientSecret: string
	// OAuth token exchange parameters
	ExchangeParameters?: {...}
}

#PagerDutyAuthorizationConfig: {
	OAuthClientCredentials?: #OAuthClientDetails
}

#PagerDutyDetails: {
	AuthorizationConfig: #PagerDutyAuthorizationConfig
	// PagerDuty scopes
	Scopes: [...string]
}

#RegisteredAzureIdentityDetails: {
	// Azure AD application client ID
	ClientId: string & =~"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
	// Azure AD tenant ID
	TenantId: string & =~"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
	// ARN of the IAM role for web identity token exchange
	WebIdentityRoleArn: string & =~"^arn:aws[a-zA-Z-]*:iam::[0-9]{12}:role/.+$"
	// List of audiences for the web identity token
	WebIdentityTokenAudiences: [...string]
}

#RegisteredDynatraceDetails: {
	// Dynatrace resource account URN
	AccountUrn: string
}

#RegisteredGitLabServiceDetails: {
	// Optional GitLab group ID for group-level access tokens
	GroupId?: string
	// GitLab instance URL
	TargetUrl: string
	// Type of GitLab access token
	TokenType: "personal" | "group"
}

#RegisteredMCPServerDetails: {
	// API key header name if using API key authentication
	ApiKeyHeader?: string
	// MCP server authorization method
	AuthorizationMethod: "oauth-client-credentials" | "api-key" | "bearer-token"
	// Optional description for the MCP server
	Description?: string
	// MCP server endpoint URL
	Endpoint: string
	// MCP server name
	Name: string
}

#RegisteredMCPServerGrafanaDetails: {
	// MCP server authorization method
	AuthorizationMethod: "bearer-token"
	// Optional description for the MCP server
	Description?: string
	// MCP server endpoint URL
	Endpoint: string
	// MCP server name
	Name?: string
}

#RegisteredMCPServerSigV4Details: {
	// Custom headers for the SigV4 MCP server
	CustomHeaders?: {...}
	// Optional description for the MCP server
	Description?: string
	// The MCP server endpoint URL
	Endpoint: string
	// IAM role ARN for SigV4 signing. Absent when no dedicated role is configured.
	McpRoleArn?: string
	// The MCP server name
	Name: string
	// AWS region for SigV4 signing
	Region: string
	// Deprecated - use McpRoleArn instead. IAM role ARN for SigV4 signing
	RoleArn: string
	// AWS service name for SigV4 signing
	Service: string
}

#RegisteredNewRelicDetails: {
	// New Relic account ID
	AccountId: string
	// Optional user description
	Description?: string
	// New Relic region
	Region: "US" | "EU"
}

#RegisteredPagerDutyDetails: {
	// The scopes assigned to the service
	Scopes: [...string]
}

#RegisteredServiceNowDetails: {
	// ServiceNow instance URL
	InstanceUrl: string
}

#ServiceNowAuthorizationConfig: {
	OAuthClientCredentials?: #OAuthClientDetails
}

#ServiceNowServiceDetails: {
	AuthorizationConfig?: #ServiceNowAuthorizationConfig
	// ServiceNow instance URL
	InstanceUrl: string & =~"^https://[a-zA-Z0-9-]+\\.service-now\\.com/?$"
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
