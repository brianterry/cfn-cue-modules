package datasource

import "strings"

#Properties: {
	// <p>A set of alternate data source parameters that you want to share for the credentials
            stored with this data source. The credentials are applied in tandem with the data source
            parameters when you copy a data source by using a create or update request. The API
            operation compares the <code>DataSourceParameters</code> structure that's in the request
            with the structures in the <code>AlternateDataSourceParameters</code> allow list. If the
            structures are an exact match, the request is allowed to use the credentials from this
            existing data source. If the <code>AlternateDataSourceParameters</code> list is null,
            the <code>Credentials</code> originally used with this <code>DataSourceParameters</code>
            are automatically allowed.</p>
	AlternateDataSourceParameters?: [...#DataSourceParameters]
	AwsAccountId?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	Credentials?: #DataSourceCredentials
	DataSourceId?: string
	DataSourceParameters?: #DataSourceParameters
	ErrorInfo?: #DataSourceErrorInfo
	FolderArns?: [...string]
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Permissions?: [...#ResourcePermission]
	SslProperties?: #SslProperties
	Tags?: [...#Tag]
	Type: #DataSourceType
	VpcConnectionProperties?: #VpcConnectionProperties
}

#AmazonElasticsearchParameters: {
	// <p>The OpenSearch domain.</p>
	Domain: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#AmazonOpenSearchParameters: {
	// <p>The OpenSearch domain.</p>
	Domain: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#AthenaParameters: {
	IdentityCenterConfiguration?: #IdentityCenterConfiguration
	// <p>Use the <code>RoleArn</code> structure to override an account-wide role for a specific Athena data source. For example, say an account administrator has turned off all Athena access with an account-wide role. The administrator can then use <code>RoleArn</code> to bypass the account-wide role and allow Athena access for the single Athena data source that is specified in the structure, even if the account-wide role forbidding Athena access is still active.</p>
	RoleArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// <p>The workgroup that Amazon Athena uses.</p>
	WorkGroup?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#AuroraParameters: {
	// <p>Database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Port.</p>
	Port: number & >=1 & <=65535
}

#AuroraPostgreSqlParameters: {
	// <p>The Amazon Aurora PostgreSQL database to connect to.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>The Amazon Aurora PostgreSQL-Compatible host to connect to.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>The port that Amazon Aurora PostgreSQL is listening on.</p>
	Port: number & >=1 & <=65535
}

#AwsIotAnalyticsParameters: {
	// <p>Dataset name.</p>
	DataSetName: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#CredentialPair: {
	// <p>A set of alternate data source parameters that you want to share for these
            credentials. The credentials are applied in tandem with the data source parameters when
            you copy a data source by using a create or update request. The API operation compares
            the <code>DataSourceParameters</code> structure that's in the request with the
            structures in the <code>AlternateDataSourceParameters</code> allow list. If the
            structures are an exact match, the request is allowed to use the new data source with
            the existing credentials. If the <code>AlternateDataSourceParameters</code> list is
            null, the <code>DataSourceParameters</code> originally used with these
                <code>Credentials</code> is automatically allowed.</p>
	AlternateDataSourceParameters?: [...#DataSourceParameters]
	// <p>Password.</p>
	Password: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// <p>User name.</p>
	Username: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#DataSourceCredentials: {
	// <p>The Amazon Resource Name (ARN) of a data source that has the credential pair that you
            want to use. When <code>CopySourceArn</code> is not null, the credential pair from the
            data source in the ARN is used as the credentials for the
            <code>DataSourceCredentials</code> structure.</p>
	CopySourceArn?: string & =~"^arn:[-a-z0-9]*:quicksight:[-a-z0-9]*:[0-9]{12}:datasource/.+$"
	CredentialPair?: #CredentialPair
	KeyPairCredentials?: #KeyPairCredentials
	// <p>The Amazon Resource Name (ARN) of the secret associated with the data source in Amazon Secrets Manager.</p>
	SecretArn?: string & =~"^arn:[-a-z0-9]*:secretsmanager:[-a-z0-9]*:[0-9]{12}:secret:.+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#DataSourceErrorInfo: {
	// <p>Error message.</p>
	Message?: string
	Type?: #DataSourceErrorInfoType
}

#DataSourceParameters: {
	AmazonElasticsearchParameters?: #AmazonElasticsearchParameters
	AmazonOpenSearchParameters?: #AmazonOpenSearchParameters
	AthenaParameters?: #AthenaParameters
	AuroraParameters?: #AuroraParameters
	AuroraPostgreSqlParameters?: #AuroraPostgreSqlParameters
	DatabricksParameters?: #DatabricksParameters
	MariaDbParameters?: #MariaDbParameters
	MySqlParameters?: #MySqlParameters
	OracleParameters?: #OracleParameters
	PostgreSqlParameters?: #PostgreSqlParameters
	PrestoParameters?: #PrestoParameters
	RdsParameters?: #RdsParameters
	RedshiftParameters?: #RedshiftParameters
	S3Parameters?: #S3Parameters
	S3TablesParameters?: #S3TablesParameters
	SnowflakeParameters?: #SnowflakeParameters
	SparkParameters?: #SparkParameters
	SqlServerParameters?: #SqlServerParameters
	StarburstParameters?: #StarburstParameters
	TeradataParameters?: #TeradataParameters
	TrinoParameters?: #TrinoParameters
}

#DatabricksParameters: {
	// <p>The host name of the Databricks data source.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>The port for the Databricks data source.</p>
	Port: number & >=1 & <=65535
	// <p>The HTTP path of the Databricks data source.</p>
	SqlEndpointPath: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#IdentityCenterConfiguration: {
	// <p>A Boolean option that controls whether Trusted Identity Propagation should be used.</p>
	EnableIdentityPropagation?: bool
}

#ImpalaParameters: {
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Port: number & >=1 & <=65535
	SqlEndpointPath: string & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#KeyPairCredentials: {
	KeyPairUsername: string & strings.MinRunes(1) & strings.MaxRunes(64)
	PrivateKey: string & =~"^-{5}BEGIN (ENCRYPTED )?PRIVATE KEY-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END (ENCRYPTED )?PRIVATE KEY-{5}(\\u000D?\\u000A)?$" & strings.MinRunes(1600) & strings.MaxRunes(8000)
	PrivateKeyPassphrase?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#ManifestFileLocation: {
	// <p>Amazon S3 bucket.</p>
	Bucket: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// <p>Amazon S3 key that identifies an object.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#MariaDbParameters: {
	// <p>Database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Port.</p>
	Port: number & >=1 & <=65535
}

#MySqlParameters: {
	// <p>Database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Port.</p>
	Port: number & >=1 & <=65535
}

#OAuthParameters: {
	IdentityProviderResourceUri?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	IdentityProviderVpcConnectionProperties?: #VpcConnectionProperties
	OAuthScope?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	TokenProviderUrl: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#OracleParameters: {
	// <p>The database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>An Oracle host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>The port.</p>
	Port: number & >=1 & <=65535
	UseServiceName?: bool
}

#PostgreSqlParameters: {
	// <p>Database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Port.</p>
	Port: number & >=1 & <=65535
}

#PrestoParameters: {
	// <p>Catalog.</p>
	Catalog: string & strings.MinRunes(0) & strings.MaxRunes(128)
	// <p>Host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Port.</p>
	Port: number & >=1 & <=65535
}

#RdsParameters: {
	// <p>Database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Instance ID.</p>
	InstanceId: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#RedshiftIAMParameters: {
	// <p>Automatically creates a database user. If your database doesn't have a <code>DatabaseUser</code>, set this parameter to <code>True</code>. If there is no <code>DatabaseUser</code>, Amazon QuickSight can't connect to your cluster. The <code>RoleArn</code> that you use for this operation must grant access to <code>redshift:CreateClusterUser</code> to successfully create the user.</p>
	AutoCreateDatabaseUser?: bool
	// <p>A list of groups whose permissions will be granted to Amazon QuickSight to access the cluster. These permissions are combined with the permissions granted to Amazon QuickSight by the <code>DatabaseUser</code>. If you choose to include this parameter, the <code>RoleArn</code> must grant access to <code>redshift:JoinGroup</code>.</p>
	DatabaseGroups?: [...string & strings.MinRunes(1) & strings.MaxRunes(64)]
	// <p>The user whose permissions and group memberships will be used by Amazon QuickSight to access the cluster. If this user already exists in your database, Amazon QuickSight is granted the same permissions that the user has. If the user doesn't exist, set the value of <code>AutoCreateDatabaseUser</code> to <code>True</code> to create a new user with PUBLIC permissions.</p>
	DatabaseUser?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// <p>Use the <code>RoleArn</code> structure to allow Amazon QuickSight to call <code>redshift:GetClusterCredentials</code> on your cluster. The calling principal must have <code>iam:PassRole</code> access to pass the role to Amazon QuickSight. The role's trust policy must allow the Amazon QuickSight service principal to assume the role.</p>
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#RedshiftParameters: {
	// <p>Cluster ID. This field can be blank if the <code>Host</code> and <code>Port</code> are
            provided.</p>
	ClusterId?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// <p>Database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Host. This field can be blank if <code>ClusterId</code> is provided.</p>
	Host?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	IAMParameters?: #RedshiftIAMParameters
	IdentityCenterConfiguration?: #IdentityCenterConfiguration
	// <p>Port. This field can be blank if the <code>ClusterId</code> is provided.</p>
	Port?: number & >=0 & <=65535
}

#ResourcePermission: {
	// <p>The IAM action to grant or revoke permissions on.</p>
	Actions: [...string]
	// <p>The Amazon Resource Name (ARN) of the principal. This can be one of the
            following:</p>
         <ul>
            <li>
               <p>The ARN of an Amazon QuickSight user or group associated with a data source or dataset. (This is common.)</p>
            </li>
            <li>
               <p>The ARN of an Amazon QuickSight user, group, or namespace associated with an analysis, dashboard, template, or theme. (This is common.)</p>
            </li>
            <li>
               <p>The ARN of an Amazon Web Services account root: This is an IAM ARN rather than a QuickSight
                    ARN. Use this option only to share resources (templates) across Amazon Web Services accounts.
                    (This is less common.) </p>
            </li>
         </ul>
	Principal: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Resource?: string
}

#S3Parameters: {
	ManifestFileLocation: #ManifestFileLocation
	// <p>Use the <code>RoleArn</code> structure to override an account-wide role for a specific S3 data source. For example, say an account administrator has turned off all S3 access with an account-wide role. The administrator can then use <code>RoleArn</code> to bypass the account-wide role and allow S3 access for the single S3 data source that is specified in the structure, even if the account-wide role forbidding S3 access is still active.</p>
	RoleArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#S3TablesParameters: {
	TableBucketArn?: string & =~"^(arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:bucket/[a-zA-Z0-9-_]{3,63})$"
}

#SnowflakeParameters: {
	AuthenticationType?: #AuthenticationType
	// <p>Database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	DatabaseAccessControlRole?: string & strings.MinRunes(0) & strings.MaxRunes(128)
	// <p>Host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	OAuthParameters?: #OAuthParameters
	// <p>Warehouse.</p>
	Warehouse: string & strings.MinRunes(0) & strings.MaxRunes(128)
}

#SparkParameters: {
	// <p>Host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Port.</p>
	Port: number & >=1 & <=65535
}

#SqlServerParameters: {
	// <p>Database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Port.</p>
	Port: number & >=1 & <=65535
}

#SslProperties: {
	// <p>A Boolean option to control whether SSL should be disabled.</p>
	DisableSsl?: bool
}

#StarburstParameters: {
	AuthenticationType?: #AuthenticationType
	// <p>The catalog name for the Starburst data source.</p>
	Catalog: string & strings.MinRunes(0) & strings.MaxRunes(128)
	DatabaseAccessControlRole?: string & strings.MinRunes(0) & strings.MaxRunes(128)
	// <p>The host name of the Starburst data source.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	OAuthParameters?: #OAuthParameters
	// <p>The port for the Starburst data source.</p>
	Port: number & >=1 & <=65535
	ProductType?: #StarburstProductType
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TeradataParameters: {
	// <p>Database.</p>
	Database: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Host.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Port.</p>
	Port: number & >=1 & <=65535
}

#TrinoParameters: {
	// <p>The catalog name for the Trino data source.</p>
	Catalog: string & strings.MinRunes(0) & strings.MaxRunes(128)
	// <p>The host name of the Trino data source.</p>
	Host: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>The port for the Trino data source.</p>
	Port: number & >=1 & <=65535
}

#VpcConnectionProperties: {
	// <p>The Amazon Resource Name (ARN) for the VPC connection.</p>
	VpcConnectionArn: string
}
