package dbproxy

import "strings"

#Properties: {
	// The authorization mechanism that the proxy uses.
	Auth?: [...#AuthFormat]
	// The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region.
	DBProxyName: string & =~"[0-z]*" & strings.MaxRunes(64)
	// Whether the proxy includes detailed information about SQL statements in its logs.
	DebugLogging?: bool
	// The default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database.
	DefaultAuthScheme?: "IAM_AUTH" | "NONE"
	// The network type of the DB proxy endpoint. The network type determines the IP version that the proxy endpoint supports.
	EndpointNetworkType?: "IPV4" | "IPV6" | "DUAL"
	// The kinds of databases that the proxy can connect to.
	EngineFamily: "MYSQL" | "POSTGRESQL" | "SQLSERVER"
	// The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it.
	IdleClientTimeout?: int
	// A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy.
	RequireTLS?: bool
	// The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
	RoleArn: string
	// An optional set of key-value pairs to associate arbitrary data of your choosing with the proxy.
	Tags?: [...#TagFormat]
	// The network type that the proxy uses to connect to the target database. The network type determines the IP version that the proxy uses for connections to the database.
	TargetConnectionNetworkType?: "IPV4" | "IPV6"
	// VPC security group IDs to associate with the new proxy.
	VpcSecurityGroupIds?: [...string]
	// VPC subnet IDs to associate with the new proxy.
	VpcSubnetIds: [...string]
}

#AuthFormat: {
	// The type of authentication that the proxy uses for connections from the proxy to the underlying database.
	AuthScheme?: "SECRETS"
	// The type of authentication the proxy uses for connections from clients.
	ClientPasswordAuthType?: "MYSQL_NATIVE_PASSWORD" | "MYSQL_CACHING_SHA2_PASSWORD" | "POSTGRES_SCRAM_SHA_256" | "POSTGRES_MD5" | "SQL_SERVER_AUTHENTICATION"
	// A user-specified description about the authentication used by a proxy to log in as a specific database user.
	Description?: string
	// Whether to require or disallow Amazon Web Services Identity and Access Management (IAM) authentication for connections to the proxy. The ENABLED value is valid only for proxies with RDS for Microsoft SQL Server.
	IAMAuth?: "DISABLED" | "REQUIRED" | "ENABLED"
	// The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.
	SecretArn?: string
}

#TagFormat: {
	Key?: string & =~"(\\w|\\d|\\s|\\\\|-|\\.:=+-)*" & strings.MaxRunes(128)
	Value?: string & =~"(\\w|\\d|\\s|\\\\|-|\\.:=+-)*" & strings.MaxRunes(128)
}
