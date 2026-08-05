package datasource

import "strings"

#Properties: {
	// The metadata forms that are to be attached to the assets that this data source works with.
	AssetFormsInput?: [...#FormInput]
	// Configuration of the data source. It can be set to either glueRunConfiguration or redshiftRunConfiguration.
	Configuration?: #DataSourceConfigurationInput
	// The unique identifier of a connection used to fetch relevant parameters from connection during Datasource run
	ConnectionIdentifier?: string
	// The description of the data source.
	Description?: string & strings.MaxRunes(2048)
	// The ID of the Amazon DataZone domain where the data source is created.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// Specifies whether the data source is enabled.
	EnableSetting?: #EnableSetting
	// The unique identifier of the Amazon DataZone environment to which the data source publishes assets.
	EnvironmentIdentifier?: string
	// The name of the data source.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The identifier of the Amazon DataZone project in which you want to add the data source.
	ProjectIdentifier: string
	// Specifies whether the assets that this data source creates in the inventory are to be also automatically published to the catalog.
	PublishOnImport?: bool
	// Specifies whether the business name generation is to be enabled for this data source.
	Recommendation?: #RecommendationConfiguration
	// The schedule of the data source runs.
	Schedule?: #ScheduleConfiguration
	// The type of the data source.
	Type: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#AccountId: string & =~"^\\d{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)

#DataAccessRole: string & =~"^arn:aws[^:]*:iam::\\d{12}:role(/[a-zA-Z0-9+=,.@_-]+)*/[a-zA-Z0-9+=,.@_-]+$"

#DataSourceConfigurationInput: {
	GlueRunConfiguration?: #GlueRunConfigurationInput
} | {
	RedshiftRunConfiguration?: #RedshiftRunConfigurationInput
} | {
	SageMakerRunConfiguration?: #SageMakerRunConfigurationInput
}

#DataSourceStatus: "CREATING" | "FAILED_CREATION" | "READY" | "UPDATING" | "FAILED_UPDATE" | "RUNNING" | "DELETING" | "FAILED_DELETION"

#EnableSetting: "ENABLED" | "DISABLED"

#FilterExpression: {
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Type: #FilterExpressionType
}

#FilterExpressionType: "INCLUDE" | "EXCLUDE"

#FormInput: {
	// The content of the metadata form.
	Content?: string & strings.MaxRunes(75000)
	// The name of the metadata form.
	FormName: #FormName
	// The ID of the metadata form type.
	TypeIdentifier?: string & =~"^(?!\\.)[\\w\\.]*\\w$" & strings.MinRunes(1) & strings.MaxRunes(385)
	// The revision of the metadata form type.
	TypeRevision?: #TypeRevision
}

#FormName: string & =~"^(?![0-9_])\\w+$|^_\\w*[a-zA-Z0-9]\\w*$" & strings.MinRunes(1) & strings.MaxRunes(128)

#GlueRunConfigurationInput: {
	// Specifies whether to automatically import data quality metrics as part of the data source run.
	AutoImportDataQualityResult?: bool
	// The catalog name in the AWS Glue run configuration.
	CatalogName?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The data access role included in the configuration details of the AWS Glue data source.
	DataAccessRole?: #DataAccessRole
	// The relational filter configurations included in the configuration details of the AWS Glue data source.
	RelationalFilterConfigurations: [...#RelationalFilterConfiguration]
}

#RecommendationConfiguration: {
	// Specifies whether automatic business name generation is to be enabled or not as part of the recommendation configuration.
	EnableBusinessNameGeneration?: bool
}

#RedshiftClusterStorage: {
	// The name of an Amazon Redshift cluster.
	ClusterName: string & =~"^[0-9a-z].[a-z0-9\\-]*$" & strings.MinRunes(1) & strings.MaxRunes(63)
}

#RedshiftCredentialConfiguration: {
	// The ARN of a secret manager for an Amazon Redshift cluster.
	SecretManagerArn: string & =~"^arn:aws[^:]*:secretsmanager:[a-z]{2}-?(iso|gov)?-{1}[a-z]*-{1}[0-9]:\\d{12}:secret:.*$" & strings.MaxRunes(256)
}

#RedshiftRunConfigurationInput: {
	// The data access role included in the configuration details of the Amazon Redshift data source.
	DataAccessRole?: #DataAccessRole
	// The details of the credentials required to access an Amazon Redshift cluster.
	RedshiftCredentialConfiguration?: #RedshiftCredentialConfiguration
	// The details of the Amazon Redshift storage as part of the configuration of an Amazon Redshift data source run.
	RedshiftStorage?: #RedshiftStorage
	RelationalFilterConfigurations: #RelationalFilterConfigurations
}

#RedshiftServerlessStorage: {
	// The name of the Amazon Redshift Serverless workgroup.
	WorkgroupName: string & =~"^[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
}

#RedshiftStorage: {
	RedshiftClusterSource: #RedshiftClusterStorage
} | {
	RedshiftServerlessSource: #RedshiftServerlessStorage
}

#Region: string & =~"[a-z]{2}-?(iso|gov)?-{1}[a-z]*-{1}[0-9]" & strings.MinRunes(4) & strings.MaxRunes(16)

#RelationalFilterConfiguration: {
	// The database name specified in the relational filter configuration for the data source.
	DatabaseName: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The filter expressions specified in the relational filter configuration for the data source.
	FilterExpressions?: [...#FilterExpression]
	// The schema name specified in the relational filter configuration for the data source.
	SchemaName?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#RelationalFilterConfigurations: [...#RelationalFilterConfiguration]

#SageMakerRunConfigurationInput: {
	// The tracking assets of the Amazon SageMaker run.
	TrackingAssets: #TrackingAssets
}

#ScheduleConfiguration: {
	// The schedule of the data source runs.
	Schedule?: string & =~"cron\\((\\b[0-5]?[0-9]\\b) (\\b2[0-3]\\b|\\b[0-1]?[0-9]\\b) (.*){1,5} (.*){1,5} (.*){1,5} (.*){1,5}\\)" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The timezone of the data source run.
	Timezone?: #Timezone
}

#Timezone: string

#TrackingAssets: {...}

#TypeRevision: string & strings.MinRunes(1) & strings.MaxRunes(64)
