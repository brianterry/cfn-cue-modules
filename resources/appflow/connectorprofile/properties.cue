package connectorprofile

import "strings"

#Properties: {
	// Mode in which data transfer should be enabled. Private connection mode is currently enabled for Salesforce, Snowflake, Trendmicro and Singular
	ConnectionMode: "Public" | "Private"
	// The label of the connector. The label is unique for each ConnectorRegistration in your AWS account. Only needed if calling for CUSTOMCONNECTOR connector type/.
	ConnectorLabel?: string & =~"[\\w!@#.-]+" & strings.MaxRunes(256)
	// Connector specific configurations needed to create connector profile
	ConnectorProfileConfig?: #ConnectorProfileConfig
	// The maximum number of items to retrieve in a single batch.
	ConnectorProfileName: string & =~"[\\w/!@#+=.-]+" & strings.MaxRunes(256)
	// List of Saas providers that need connector profile to be created
	ConnectorType: #ConnectorType
	// The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment variables. If it's not provided, AWS Lambda uses a default service key.
	KMSArn?: string & =~"arn:aws:kms:.*:[0-9]+:.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#AmplitudeConnectorProfileCredentials: {
	// A unique alphanumeric identiﬁer used to authenticate a user, developer, or calling program to your API.
	ApiKey: #ApiKey
	SecretKey: #SecretKey
}

#ApiKeyCredentials: {
	ApiKey: #ApiKey
	ApiSecretKey?: #ApiSecretKey
}

#BasicAuthCredentials: {
	Password: #Password
	Username: #Username
}

#ConnectorOAuthRequest: {
	// The code provided by the connector when it has been authenticated via the connected app.
	AuthCode?: string
	// The URL to which the authentication server redirects the browser after authorization has been
granted.
	RedirectUri?: string
}

#ConnectorProfileConfig: {
	ConnectorProfileCredentials?: #ConnectorProfileCredentials
	ConnectorProfileProperties?: #ConnectorProfileProperties
}

#ConnectorProfileCredentials: {
	Amplitude?: #AmplitudeConnectorProfileCredentials
	CustomConnector?: #CustomConnectorProfileCredentials
	Datadog?: #DatadogConnectorProfileCredentials
	Dynatrace?: #DynatraceConnectorProfileCredentials
	GoogleAnalytics?: #GoogleAnalyticsConnectorProfileCredentials
	InforNexus?: #InforNexusConnectorProfileCredentials
	Marketo?: #MarketoConnectorProfileCredentials
	Pardot?: #PardotConnectorProfileCredentials
	Redshift?: #RedshiftConnectorProfileCredentials
	SAPOData?: #SAPODataConnectorProfileCredentials
	Salesforce?: #SalesforceConnectorProfileCredentials
	ServiceNow?: #ServiceNowConnectorProfileCredentials
	Singular?: #SingularConnectorProfileCredentials
	Slack?: #SlackConnectorProfileCredentials
	Snowflake?: #SnowflakeConnectorProfileCredentials
	Trendmicro?: #TrendmicroConnectorProfileCredentials
	Veeva?: #VeevaConnectorProfileCredentials
	Zendesk?: #ZendeskConnectorProfileCredentials
}

#ConnectorProfileProperties: {
	CustomConnector?: #CustomConnectorProfileProperties
	Datadog?: #DatadogConnectorProfileProperties
	Dynatrace?: #DynatraceConnectorProfileProperties
	InforNexus?: #InforNexusConnectorProfileProperties
	Marketo?: #MarketoConnectorProfileProperties
	Pardot?: #PardotConnectorProfileProperties
	Redshift?: #RedshiftConnectorProfileProperties
	SAPOData?: #SAPODataConnectorProfileProperties
	Salesforce?: #SalesforceConnectorProfileProperties
	ServiceNow?: #ServiceNowConnectorProfileProperties
	Slack?: #SlackConnectorProfileProperties
	Snowflake?: #SnowflakeConnectorProfileProperties
	Veeva?: #VeevaConnectorProfileProperties
	Zendesk?: #ZendeskConnectorProfileProperties
}

#CustomAuthCredentials: {
	CredentialsMap?: #CredentialsMap
	CustomAuthenticationType: #CustomAuthenticationType
}

#CustomConnectorProfileCredentials: {
	ApiKey?: #ApiKeyCredentials
	AuthenticationType: #AuthenticationType
	Basic?: #BasicAuthCredentials
	Custom?: #CustomAuthCredentials
	Oauth2?: #OAuth2Credentials
}

#CustomConnectorProfileProperties: {
	OAuth2Properties?: #OAuth2Properties
	ProfileProperties?: #ProfileProperties
}

#DatadogConnectorProfileCredentials: {
	// A unique alphanumeric identiﬁer used to authenticate a user, developer, or calling program to your API.
	ApiKey: #ApiKey
	// Application keys, in conjunction with your API key, give you full access to Datadog’s programmatic API. Application keys are associated with the user account that created them. The application key is used to log all requests made to the API.
	ApplicationKey: #ApplicationKey
}

#DatadogConnectorProfileProperties: {
	// The location of the Datadog resource
	InstanceUrl: #InstanceUrl
}

#DynatraceConnectorProfileCredentials: {
	// The API tokens used by Dynatrace API to authenticate various API calls.
	ApiToken: #ApiToken
}

#DynatraceConnectorProfileProperties: {
	// The location of the Dynatrace resource
	InstanceUrl: #InstanceUrl
}

#GoogleAnalyticsConnectorProfileCredentials: {
	// The credentials used to access protected resources.
	AccessToken?: #AccessToken
	// The identiﬁer for the desired client.
	ClientId: #ClientId
	// The client secret used by the oauth client to authenticate to the authorization server.
	ClientSecret: #ClientSecret
	// The oauth needed to request security tokens from the connector endpoint.
	ConnectorOAuthRequest?: #ConnectorOAuthRequest
	// The credentials used to acquire new access tokens.
	RefreshToken?: #RefreshToken
}

#InforNexusConnectorProfileCredentials: {
	// The Access Key portion of the credentials.
	AccessKeyId: #AccessKeyId
	// The encryption keys used to encrypt data.
	Datakey: #Key
	// The secret key used to sign requests.
	SecretAccessKey: #Key
	// The identiﬁer for the user.
	UserId: #Username
}

#InforNexusConnectorProfileProperties: {
	// The location of the InforNexus resource
	InstanceUrl: #InstanceUrl
}

#MarketoConnectorProfileCredentials: {
	// The credentials used to access protected resources.
	AccessToken?: #AccessToken
	// The identiﬁer for the desired client.
	ClientId: #ClientId
	// The client secret used by the oauth client to authenticate to the authorization server.
	ClientSecret: #ClientSecret
	// The oauth needed to request security tokens from the connector endpoint.
	ConnectorOAuthRequest?: #ConnectorOAuthRequest
}

#MarketoConnectorProfileProperties: {
	// The location of the Marketo resource
	InstanceUrl: #InstanceUrl
}

#OAuth2Credentials: {
	AccessToken?: #AccessToken
	ClientId?: #ClientId
	ClientSecret?: #ClientSecret
	OAuthRequest?: #ConnectorOAuthRequest
	RefreshToken?: #RefreshToken
}

#OAuth2Properties: {
	OAuth2GrantType?: #OAuth2GrantType
	TokenUrl?: string & =~"^(https?)://[-a-zA-Z0-9+&amp;@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&amp;@#/%=~_|]" & strings.MinRunes(0) & strings.MaxRunes(256)
	TokenUrlCustomProperties?: #TokenUrlCustomProperties
}

#OAuthProperties: {
	AuthCodeUrl?: string & =~"^(https?)://[-a-zA-Z0-9+&amp;@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&amp;@#/%=~_|]" & strings.MaxRunes(256)
	OAuthScopes?: [...string & =~"[/\\w]*" & strings.MaxRunes(128)]
	TokenUrl?: string & =~"^(https?)://[-a-zA-Z0-9+&amp;@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&amp;@#/%=~_|]" & strings.MaxRunes(256)
}

#PardotConnectorProfileCredentials: {
	// The credentials used to access protected resources.
	AccessToken?: #AccessToken
	// The client credentials to fetch access token and refresh token.
	ClientCredentialsArn?: #ClientCredentialsArn
	// The oauth needed to request security tokens from the connector endpoint.
	ConnectorOAuthRequest?: #ConnectorOAuthRequest
	// The credentials used to acquire new access tokens.
	RefreshToken?: #RefreshToken
}

#PardotConnectorProfileProperties: {
	// The Business unit id of Salesforce Pardot instance to be connected
	BusinessUnitId: #BusinessUnitId
	// The location of the Salesforce Pardot resource
	InstanceUrl?: #InstanceUrl
	// Indicates whether the connector profile applies to a demo or production environment
	IsSandboxEnvironment?: bool
}

#RedshiftConnectorProfileCredentials: {
	// The password that corresponds to the username.
	Password?: #Password
	// The name of the user.
	Username?: #Username
}

#RedshiftConnectorProfileProperties: {
	// The name of the Amazon S3 bucket associated with Redshift.
	BucketName: #BucketName
	// The object key for the destination bucket in which Amazon AppFlow will place the ﬁles.
	BucketPrefix?: #BucketPrefix
	// The unique identifier of the Amazon Redshift cluster.
	ClusterIdentifier?: #ClusterIdentifier
	// The Amazon Resource Name (ARN) of the IAM role that grants Amazon AppFlow access to the data through the Amazon Redshift Data API.
	DataApiRoleArn?: #DataApiRoleArn
	// The name of the Amazon Redshift database that will store the transferred data.
	DatabaseName?: #DatabaseName
	// The JDBC URL of the Amazon Redshift cluster.
	DatabaseUrl?: #DatabaseUrl
	// If Amazon AppFlow will connect to Amazon Redshift Serverless or Amazon Redshift cluster.
	IsRedshiftServerless?: bool
	// The Amazon Resource Name (ARN) of the IAM role.
	RoleArn: #RoleArn
	// The name of the Amazon Redshift serverless workgroup
	WorkgroupName?: #WorkgroupName
}

#SAPODataConnectorProfileCredentials: {
	BasicAuthCredentials?: #BasicAuthCredentials
	OAuthCredentials?: {
		AccessToken?: #AccessToken
		ClientId?: #ClientId
		ClientSecret?: #ClientSecret
		ConnectorOAuthRequest?: #ConnectorOAuthRequest
		RefreshToken?: #RefreshToken
	}
}

#SAPODataConnectorProfileProperties: {
	ApplicationHostUrl?: #ApplicationHostUrl
	ApplicationServicePath?: #ApplicationServicePath
	ClientNumber?: #ClientNumber
	// If you set this parameter to true, Amazon AppFlow bypasses the single sign-on (SSO) settings in your SAP account when it accesses your SAP OData instance.
	DisableSSO?: bool
	LogonLanguage?: #LogonLanguage
	OAuthProperties?: #OAuthProperties
	PortNumber?: #PortNumber
	PrivateLinkServiceName?: #PrivateLinkServiceName
}

#SalesforceConnectorProfileCredentials: {
	// The credentials used to access protected resources.
	AccessToken?: #AccessToken
	// The client credentials to fetch access token and refresh token.
	ClientCredentialsArn?: #ClientCredentialsArn
	// The oauth needed to request security tokens from the connector endpoint.
	ConnectorOAuthRequest?: #ConnectorOAuthRequest
	// The credentials used to access your Salesforce records
	JwtToken?: #JwtToken
	// The grant types to fetch an access token
	OAuth2GrantType?: #OAuth2GrantType
	// The credentials used to acquire new access tokens.
	RefreshToken?: #RefreshToken
}

#SalesforceConnectorProfileProperties: {
	// The location of the Salesforce resource
	InstanceUrl?: #InstanceUrl
	// Indicates whether the connector profile applies to a sandbox or production environment
	isSandboxEnvironment?: bool
	// Indicates whether to make Metadata And Authorization calls over Pivate Network
	usePrivateLinkForMetadataAndAuthorization?: bool
}

#ServiceNowConnectorProfileCredentials: {
	// The OAuth 2.0 credentials required to authenticate the user.
	OAuth2Credentials?: #OAuth2Credentials
	// The password that corresponds to the username.
	Password?: #Password
	// The name of the user.
	Username?: #Username
}

#ServiceNowConnectorProfileProperties: {
	// The location of the ServiceNow resource
	InstanceUrl: #InstanceUrl
}

#SingularConnectorProfileCredentials: {
	// A unique alphanumeric identiﬁer used to authenticate a user, developer, or calling program to your API.
	ApiKey: #ApiKey
}

#SlackConnectorProfileCredentials: {
	// The credentials used to access protected resources.
	AccessToken?: #AccessToken
	// The identiﬁer for the desired client.
	ClientId: #ClientId
	// The client secret used by the oauth client to authenticate to the authorization server.
	ClientSecret: #ClientSecret
	// The oauth needed to request security tokens from the connector endpoint.
	ConnectorOAuthRequest?: #ConnectorOAuthRequest
}

#SlackConnectorProfileProperties: {
	// The location of the Slack resource
	InstanceUrl: #InstanceUrl
}

#SnowflakeConnectorProfileCredentials: {
	// The password that corresponds to the username.
	Password: #Password
	// The name of the user.
	Username: #Username
}

#SnowflakeConnectorProfileProperties: {
	// The name of the account.
	AccountName?: #AccountName
	// The name of the Amazon S3 bucket associated with Snowﬂake.
	BucketName: #BucketName
	// The bucket prefix that refers to the Amazon S3 bucket associated with Snowﬂake.
	BucketPrefix?: #BucketPrefix
	// The Snowﬂake Private Link service name to be used for private data transfers.
	PrivateLinkServiceName?: #PrivateLinkServiceName
	// The region of the Snowﬂake account.
	Region?: #Region
	// The name of the Amazon S3 stage that was created while setting up an Amazon S3 stage in the
Snowﬂake account. This is written in the following format: < Database>< Schema><Stage Name>.
	Stage: #Stage
	// The name of the Snowﬂake warehouse.
	Warehouse: #Warehouse
}

#TrendmicroConnectorProfileCredentials: {
	// The Secret Access Key portion of the credentials.
	ApiSecretKey: #ApiSecretKey
}

#VeevaConnectorProfileCredentials: {
	// The password that corresponds to the username.
	Password: #Password
	// The name of the user.
	Username: #Username
}

#VeevaConnectorProfileProperties: {
	// The location of the Veeva resource
	InstanceUrl: #InstanceUrl
}

#ZendeskConnectorProfileCredentials: {
	// The credentials used to access protected resources.
	AccessToken?: #AccessToken
	// The identiﬁer for the desired client.
	ClientId: #ClientId
	// The client secret used by the oauth client to authenticate to the authorization server.
	ClientSecret: #ClientSecret
	// The oauth needed to request security tokens from the connector endpoint.
	ConnectorOAuthRequest?: #ConnectorOAuthRequest
}

#ZendeskConnectorProfileProperties: {
	// The location of the Zendesk resource
	InstanceUrl: #InstanceUrl
}
