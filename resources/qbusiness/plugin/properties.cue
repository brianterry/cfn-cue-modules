package plugin

import "strings"

#Properties: {
	ApplicationId?: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	AuthConfiguration: #PluginAuthConfiguration
	CustomPluginConfiguration?: #CustomPluginConfiguration
	DisplayName: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	ServerUrl?: string & =~"^(https?|ftp|file)://([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	State?: #PluginState
	Tags?: [...#Tag]
	Type: #PluginType
}

#APISchema: {
	Payload: string
} | {
	S3: #S3
}

#APISchemaType: "OPEN_API_V3"

#BasicAuthConfiguration: {
	RoleArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	SecretArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
}

#CustomPluginConfiguration: {
	ApiSchema: #APISchema
	ApiSchemaType: #APISchemaType
	Description: string & strings.MinRunes(1) & strings.MaxRunes(200)
}

#NoAuthConfiguration: {...}

#OAuth2ClientCredentialConfiguration: {
	AuthorizationUrl?: string & =~"^(https?|ftp|file)://([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	RoleArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	SecretArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	TokenUrl?: string & =~"^(https?|ftp|file)://([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#PluginAuthConfiguration: {
	BasicAuthConfiguration: #BasicAuthConfiguration
} | {
	OAuth2ClientCredentialConfiguration: #OAuth2ClientCredentialConfiguration
} | {
	NoAuthConfiguration: #NoAuthConfiguration
}

#PluginBuildStatus: "READY" | "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "UPDATE_IN_PROGRESS" | "UPDATE_FAILED" | "DELETE_IN_PROGRESS" | "DELETE_FAILED"

#PluginState: "ENABLED" | "DISABLED"

#PluginType: "SERVICE_NOW" | "SALESFORCE" | "JIRA" | "ZENDESK" | "CUSTOM" | "QUICKSIGHT" | "SERVICENOW_NOW_PLATFORM" | "JIRA_CLOUD" | "SALESFORCE_CRM" | "ZENDESK_SUITE" | "ATLASSIAN_CONFLUENCE" | "GOOGLE_CALENDAR" | "MICROSOFT_TEAMS" | "MICROSOFT_EXCHANGE" | "PAGERDUTY_ADVANCE" | "SMARTSHEET" | "ASANA"

#S3: {
	Bucket: string & =~"^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(63)
	Key: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
