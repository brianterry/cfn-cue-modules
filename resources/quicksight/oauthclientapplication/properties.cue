package oauthclientapplication

import "strings"

#Properties: {
	ClientId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientSecret?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	DataSourceType?: "ADOBE_ANALYTICS" | "AMAZON_ELASTICSEARCH" | "AMAZON_OPENSEARCH" | "ATHENA" | "AURORA" | "AURORA_POSTGRESQL" | "AWS_IOT_ANALYTICS" | "BIGQUERY" | "CONFLUENCE" | "DATABRICKS" | "EXASOL" | "GITHUB" | "GOOGLESHEETS" | "GOOGLE_DRIVE" | "JIRA" | "MARIADB" | "MYSQL" | "ONE_DRIVE" | "ORACLE" | "POSTGRESQL" | "PRESTO" | "QBUSINESS" | "REDSHIFT" | "S3" | "S3_KNOWLEDGE_BASE" | "S3_TABLES" | "SALESFORCE" | "SERVICENOW" | "SHAREPOINT" | "SNOWFLAKE" | "SPARK" | "SQLSERVER" | "STARBURST" | "TERADATA" | "TIMESTREAM" | "TRINO" | "TWITTER" | "WEB_CRAWLER"
	IdentityProviderVpcConnectionProperties?: #IdentityProviderVpcConnectionProperties
	Name: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	OAuthAuthorizationEndpointUrl?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	OAuthClientApplicationId: string & =~"[^/][^\\u0000-\\u001f]*" & strings.MinRunes(1) & strings.MaxRunes(256)
	OAuthClientAuthenticationType: "TOKEN"
	OAuthScopes?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	OAuthTokenEndpointUrl: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
}

#IdentityProviderVpcConnectionProperties: {
	VpcConnectionArn: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
