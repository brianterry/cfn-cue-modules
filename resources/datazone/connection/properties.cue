package connection

import "strings"

#Properties: {
	AwsLocation?: #AwsLocation
	// The configurations of the connection.
	Configurations?: [...#ConnectionConfiguration]
	// The description of the connection.
	Description?: string & =~"^[\\S\\s]*$" & strings.MaxRunes(128)
	// The identifier of the domain in which the connection is created.
	DomainIdentifier: string & =~"^dzd[_-][a-zA-Z0-9_-]{1,36}$"
	// Specifies whether the trusted identity propagation is enabled
	EnableTrustedIdentityPropagation?: bool
	// The identifier of the environment in which the connection is created.
	EnvironmentIdentifier?: string
	// The name of the connection.
	Name: string & =~"^[\\w][\\w\\.\\-\\_]*$" & strings.MaxRunes(64)
	// The identifier of the project in which the connection should be created. If
	ProjectIdentifier?: string
	Props?: #ConnectionPropertiesInput
	// The scope of the connection.
	Scope?: "DOMAIN" | "PROJECT"
}

#AmazonQPropertiesInput: {
	// The authentication mode of the connection's AmazonQ properties
	AuthMode?: string & strings.MinRunes(0) & strings.MaxRunes(128)
	// Specifies whether Amazon Q is enabled for the connection
	IsEnabled?: bool
	ProfileArn?: string & =~"arn:aws[a-z\\-]*:[a-z0-9\\-]+:[a-z0-9\\-]*:[0-9]*:.*" & strings.MinRunes(0) & strings.MaxRunes(2048)
}

#AthenaPropertiesInput: {
	WorkgroupName: string & =~"^[a-zA-Z0-9._-]+$" & strings.MaxRunes(128)
}

#AuthenticationConfigurationInput: {
	AuthenticationType?: #AuthenticationType
	BasicAuthenticationCredentials?: #BasicAuthenticationCredentials
	CustomAuthenticationCredentials?: #CredentialMap
	KmsKeyArn?: string & =~"^$|arn:aws[a-z0-9-]*:kms:.*$"
	OAuth2Properties?: #OAuth2Properties
	SecretArn?: string & =~"^arn:aws(-(cn|us-gov|iso(-[bef])?))?:secretsmanager:.*$"
}

#AuthorizationCodeProperties: {
	AuthorizationCode?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	RedirectUri?: string & strings.MaxRunes(512)
}

#AwsLocation: {
	AccessRole?: string & =~"^arn:aws[^:]*:iam::\\d{12}:role(/[a-zA-Z0-9+=,.@_-]+)*/[a-zA-Z0-9+=,.@_-]+$" & strings.MaxRunes(2048)
	AwsAccountId?: string & =~"^\\d{12}$"
	AwsRegion?: string & =~"^[a-z]{2}-[a-z]{4,10}-\\d$"
	IamConnectionId?: string & =~"^[a-zA-Z0-9]+$" & strings.MaxRunes(128)
}

#BasicAuthenticationCredentials: {
	Password?: string & =~"^.*$" & strings.MaxRunes(512)
	UserName?: string & =~"^\\S+$" & strings.MaxRunes(512)
}

#ConnectionConfiguration: {
	// The classification of the connection configuration.
	Classification?: string & =~"^[\\w][\\w\\.\\-\\_]*$" & strings.MaxRunes(64)
	Properties?: #PropertyMap
}

#GlueConnectionInput: {
	AthenaProperties?: #PropertyMap
	AuthenticationConfiguration?: #AuthenticationConfigurationInput
	ConnectionProperties?: #ConnectionProperties
	ConnectionType?: #GlueConnectionType
	Description?: string & =~"^[\\u0020-\\uD7FF\\uE000-\\uFFFF\\r\\n\\t]*$" & strings.MaxRunes(2048)
	MatchCriteria?: string & strings.MinRunes(0) & strings.MaxRunes(10)
	Name?: string & =~"^[\\u0020-\\uD7FF\\uE000-\\uFFFF\\t]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	PhysicalConnectionRequirements?: #PhysicalConnectionRequirements
	PythonProperties?: #PropertyMap
	SparkProperties?: #PropertyMap
	ValidateCredentials?: bool
	ValidateForComputeEnvironments?: [...#ComputeEnvironments]
}

#GlueOAuth2Credentials: {
	AccessToken?: string & =~"^[\\x20-\\x7E]*$" & strings.MaxRunes(4096)
	JwtToken?: string & =~"^([a-zA-Z0-9_=]+)\\.([a-zA-Z0-9_=]+)\\.([a-zA-Z0-9_\\-\\+\\/=]*)$" & strings.MaxRunes(8000)
	RefreshToken?: string & =~"^[\\x20-\\x7E]*$" & strings.MaxRunes(4096)
	UserManagedClientApplicationClientSecret?: string & =~"^[\\x20-\\x7E]*$" & strings.MaxRunes(512)
}

#GluePropertiesInput: {
	GlueConnectionInput?: #GlueConnectionInput
}

#HyperPodPropertiesInput: {
	ClusterName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(63)
}

#IamPropertiesInput: {
	GlueLineageSyncEnabled?: bool
}

#LakehousePropertiesInput: {
	// Specifies whether Glue lineage sync is enabled for the lakehouse connection.
	GlueLineageSyncEnabled?: bool
}

#LineageSyncSchedule: {
	Schedule?: string & =~"^cron\\((\\b[0-5]?[0-9]\\b) (\\b2[0-3]\\b|\\b[0-1]?[0-9]\\b) ([-?*,/\\dLW]){1,83} ([-*,/\\d]|[a-zA-Z]{3}){1,23} ([-?#*,/\\dL]|[a-zA-Z]{3}){1,13} ([^\\)]+)\\)$"
}

#MlflowPropertiesInput: {
	// The ARN of the MLflow tracking server
	TrackingServerArn?: string
}

#OAuth2ClientApplication: {
	AWSManagedClientApplicationReference?: string & =~"^\\S+$" & strings.MaxRunes(2048)
	UserManagedClientApplicationClientId?: string & =~"^\\S+$" & strings.MaxRunes(2048)
}

#OAuth2Properties: {
	AuthorizationCodeProperties?: #AuthorizationCodeProperties
	OAuth2ClientApplication?: #OAuth2ClientApplication
	OAuth2Credentials?: #GlueOAuth2Credentials
	OAuth2GrantType?: #OAuth2GrantType
	TokenUrl?: string & =~"^(https?)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]$" & strings.MaxRunes(256)
	TokenUrlParametersMap?: #TokenUrlParametersMap
}

#PhysicalConnectionRequirements: {
	AvailabilityZone?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	SecurityGroupIdList?: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
	SubnetId?: string & =~"^subnet-[a-z0-9]+$" & strings.MaxRunes(32)
	SubnetIdList?: [...string & =~"^subnet-[a-z0-9]+$" & strings.MaxRunes(32)]
}

#RedshiftLineageSyncConfigurationInput: {
	Enabled?: bool
	Schedule?: #LineageSyncSchedule
}

#RedshiftPropertiesInput: {
	Credentials?: #RedshiftCredentials
	DatabaseName?: string & =~"^[a-z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Host?: string & =~"^[\\S]*$" & strings.MaxRunes(256)
	LineageSync?: #RedshiftLineageSyncConfigurationInput
	Port?: number & >=0 & <=65535
	Storage?: #RedshiftStorageProperties
}

#S3PropertiesInput: {
	// Specifies whether to register the S3 Access Grant location.
	RegisterS3AccessGrantLocation?: bool
	// The Amazon S3 Access Grant location ID that's part of the Amazon S3 properties of a connection.
	S3AccessGrantLocationId?: string & =~"[a-zA-Z0-9\\-]+" & strings.MinRunes(0) & strings.MaxRunes(64)
	// The Amazon S3 URI that's part of the Amazon S3 properties of a connection.
	S3Uri: string & =~"s3://.+" & strings.MinRunes(0) & strings.MaxRunes(2048)
}

#SparkEmrPropertiesInput: {
	ComputeArn?: string & =~"^arn:aws(-(cn|us-gov|iso(-[bef])?))?:(elasticmapreduce|emr-serverless|emr-containers):.*" & strings.MaxRunes(2048)
	InstanceProfileArn?: string & =~"^arn:aws[^:]*:iam::\\d{12}:role(/[a-zA-Z0-9+=,.@_-]+)*/[a-zA-Z0-9+=,.@_-]+$" & strings.MaxRunes(2048)
	JavaVirtualEnv?: string & =~"^[\\S]*$" & strings.MaxRunes(256)
	LogUri?: string & =~"^s3://.+$" & strings.MaxRunes(2048)
	ManagedEndpointArn?: string & strings.MaxRunes(2048)
	PythonVirtualEnv?: string & =~"^[\\S]*$" & strings.MaxRunes(256)
	RuntimeRole?: string & =~"^arn:aws[^:]*:iam::\\d{12}:role(/[a-zA-Z0-9+=,.@_-]+)*/[a-zA-Z0-9+=,.@_-]+$" & strings.MaxRunes(2048)
	TrustedCertificatesS3Uri?: string & =~"^s3://.+$" & strings.MaxRunes(2048)
}

#SparkGlueArgs: {
	Connection?: string & =~"^[a-zA-Z0-9]+$" & strings.MaxRunes(128)
}

#SparkGluePropertiesInput: {
	AdditionalArgs?: #SparkGlueArgs
	GlueConnectionName?: string & =~"^[\\S]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	GlueVersion?: string & =~"^\\w+\\.\\w+$" & strings.MaxRunes(256)
	IdleTimeout?: number & >=1 & <=3000
	JavaVirtualEnv?: string & =~"^[\\S]*$" & strings.MaxRunes(256)
	NumberOfWorkers?: number & >=1 & <=1000
	PythonVirtualEnv?: string & =~"^[\\S]*$" & strings.MaxRunes(256)
	WorkerType?: string & =~"^[G|Z].*$" & strings.MaxRunes(256)
}

#UsernamePassword: {
	Password: string & =~"^[\\S]*$" & strings.MaxRunes(64)
	Username: string & =~"^[\\S]*$" & strings.MinRunes(1) & strings.MaxRunes(127)
}

#WorkflowsMwaaPropertiesInput: {
	// The name of the MWAA environment.
	MwaaEnvironmentName?: string
}
