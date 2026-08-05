package datasource

import "strings"

#Properties: {
	CustomDocumentEnrichmentConfiguration?: #CustomDocumentEnrichmentConfiguration
	DataSourceConfiguration?: #DataSourceConfiguration
	Description?: #Description
	IndexId: #IndexId
	LanguageCode?: #LanguageCode
	Name: #Name
	RoleArn?: #RoleArn
	Schedule?: #Schedule
	// Tags for labeling the data source
	Tags?: #TagList
	Type: #Type
}

#AccessControlListConfiguration: {
	KeyPath?: #S3ObjectKey
}

#AclConfiguration: {
	AllowedGroupsColumnName: #ColumnName
}

#Arn: string & strings.MaxRunes(1000)

#ChangeDetectingColumns: [...#ColumnName]

#ColumnConfiguration: {
	ChangeDetectingColumns: #ChangeDetectingColumns
	DocumentDataColumnName: #ColumnName
	DocumentIdColumnName: #ColumnName
	DocumentTitleColumnName?: #ColumnName
	FieldMappings?: #DataSourceToIndexFieldMappingList
}

#ColumnName: string & strings.MinRunes(1) & strings.MaxRunes(100)

#ConditionOperator: "GreaterThan" | "GreaterThanOrEquals" | "LessThan" | "LessThanOrEquals" | "Equals" | "NotEquals" | "Contains" | "NotContains" | "Exists" | "NotExists" | "BeginsWith"

#ConfluenceAttachmentConfiguration: {
	AttachmentFieldMappings?: #ConfluenceAttachmentFieldMappingsList
	CrawlAttachments?: bool
}

#ConfluenceAttachmentFieldMappingsList: [...#ConfluenceAttachmentToIndexFieldMapping]

#ConfluenceAttachmentFieldName: "AUTHOR" | "CONTENT_TYPE" | "CREATED_DATE" | "DISPLAY_URL" | "FILE_SIZE" | "ITEM_TYPE" | "PARENT_ID" | "SPACE_KEY" | "SPACE_NAME" | "URL" | "VERSION"

#ConfluenceAttachmentToIndexFieldMapping: {
	DataSourceFieldName: #ConfluenceAttachmentFieldName
	DateFieldFormat?: #DateFieldFormat
	IndexFieldName: #IndexFieldName
}

#ConfluenceBlogConfiguration: {
	BlogFieldMappings?: #ConfluenceBlogFieldMappingsList
}

#ConfluenceBlogFieldMappingsList: [...#ConfluenceBlogToIndexFieldMapping]

#ConfluenceBlogFieldName: "AUTHOR" | "DISPLAY_URL" | "ITEM_TYPE" | "LABELS" | "PUBLISH_DATE" | "SPACE_KEY" | "SPACE_NAME" | "URL" | "VERSION"

#ConfluenceBlogToIndexFieldMapping: {
	DataSourceFieldName: #ConfluenceBlogFieldName
	DateFieldFormat?: #DateFieldFormat
	IndexFieldName: #IndexFieldName
}

#ConfluenceConfiguration: {
	AttachmentConfiguration?: #ConfluenceAttachmentConfiguration
	BlogConfiguration?: #ConfluenceBlogConfiguration
	ExclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	InclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	PageConfiguration?: #ConfluencePageConfiguration
	SecretArn: #SecretArn
	ServerUrl: #Url
	SpaceConfiguration?: #ConfluenceSpaceConfiguration
	Version: #ConfluenceVersion
	VpcConfiguration?: #DataSourceVpcConfiguration
}

#ConfluencePageConfiguration: {
	PageFieldMappings?: #ConfluencePageFieldMappingsList
}

#ConfluencePageFieldMappingsList: [...#ConfluencePageToIndexFieldMapping]

#ConfluencePageFieldName: "AUTHOR" | "CONTENT_STATUS" | "CREATED_DATE" | "DISPLAY_URL" | "ITEM_TYPE" | "LABELS" | "MODIFIED_DATE" | "PARENT_ID" | "SPACE_KEY" | "SPACE_NAME" | "URL" | "VERSION"

#ConfluencePageToIndexFieldMapping: {
	DataSourceFieldName: #ConfluencePageFieldName
	DateFieldFormat?: #DateFieldFormat
	IndexFieldName: #IndexFieldName
}

#ConfluenceSpaceConfiguration: {
	CrawlArchivedSpaces?: bool
	CrawlPersonalSpaces?: bool
	ExcludeSpaces?: #ConfluenceSpaceList
	IncludeSpaces?: #ConfluenceSpaceList
	SpaceFieldMappings?: #ConfluenceSpaceFieldMappingsList
}

#ConfluenceSpaceFieldMappingsList: [...#ConfluenceSpaceToIndexFieldMapping]

#ConfluenceSpaceFieldName: "DISPLAY_URL" | "ITEM_TYPE" | "SPACE_KEY" | "URL"

#ConfluenceSpaceIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(255)

#ConfluenceSpaceList: [...#ConfluenceSpaceIdentifier]

#ConfluenceSpaceToIndexFieldMapping: {
	DataSourceFieldName: #ConfluenceSpaceFieldName
	DateFieldFormat?: #DateFieldFormat
	IndexFieldName: #IndexFieldName
}

#ConfluenceVersion: "CLOUD" | "SERVER"

#ConnectionConfiguration: {
	DatabaseHost: #DatabaseHost
	DatabaseName: #DatabaseName
	DatabasePort: #DatabasePort
	SecretArn: #SecretArn
	TableName: #TableName
}

#CustomDocumentEnrichmentConfiguration: {
	InlineConfigurations?: #InlineConfigurations
	PostExtractionHookConfiguration?: #HookConfiguration
	PreExtractionHookConfiguration?: #HookConfiguration
	RoleArn?: #RoleArn
}

#DataSourceConfiguration: {
	ConfluenceConfiguration?: #ConfluenceConfiguration
	DatabaseConfiguration?: #DatabaseConfiguration
	GoogleDriveConfiguration?: #GoogleDriveConfiguration
	OneDriveConfiguration?: #OneDriveConfiguration
	S3Configuration?: #S3DataSourceConfiguration
	SalesforceConfiguration?: #SalesforceConfiguration
	ServiceNowConfiguration?: #ServiceNowConfiguration
	SharePointConfiguration?: #SharePointConfiguration
	TemplateConfiguration?: #TemplateConfiguration
	WebCrawlerConfiguration?: #WebCrawlerConfiguration
	WorkDocsConfiguration?: #WorkDocsConfiguration
}

#DataSourceFieldName: string & strings.MinRunes(1) & strings.MaxRunes(100)

#DataSourceInclusionsExclusionsStrings: [...string & strings.MinRunes(1) & strings.MaxRunes(50)]

#DataSourceToIndexFieldMapping: {
	DataSourceFieldName: #DataSourceFieldName
	DateFieldFormat?: #DateFieldFormat
	IndexFieldName: #IndexFieldName
}

#DataSourceToIndexFieldMappingList: [...#DataSourceToIndexFieldMapping]

#DataSourceVpcConfiguration: {
	SecurityGroupIds: [...string & =~"[\\-0-9a-zA-Z]+" & strings.MinRunes(1) & strings.MaxRunes(200)]
	SubnetIds: [...string & =~"[\\-0-9a-zA-Z]+" & strings.MinRunes(1) & strings.MaxRunes(200)]
}

#DatabaseConfiguration: {
	AclConfiguration?: #AclConfiguration
	ColumnConfiguration: #ColumnConfiguration
	ConnectionConfiguration: #ConnectionConfiguration
	DatabaseEngineType: #DatabaseEngineType
	SqlConfiguration?: #SqlConfiguration
	VpcConfiguration?: #DataSourceVpcConfiguration
}

#DatabaseEngineType: "RDS_AURORA_MYSQL" | "RDS_AURORA_POSTGRESQL" | "RDS_MYSQL" | "RDS_POSTGRESQL"

#DatabaseHost: string & strings.MinRunes(1) & strings.MaxRunes(253)

#DatabaseName: string & strings.MinRunes(1) & strings.MaxRunes(100)

#DatabasePort: int & >=1 & <=65535

#DateFieldFormat: string & strings.MinRunes(4) & strings.MaxRunes(40)

#Description: string & strings.MinRunes(1) & strings.MaxRunes(1000)

#DisableLocalGroups: bool

#DocumentAttributeCondition: {
	ConditionDocumentAttributeKey: #DocumentAttributeKey
	ConditionOnValue?: #DocumentAttributeValue
	Operator: #ConditionOperator
}

#DocumentAttributeKey: string & =~"[a-zA-Z0-9_][a-zA-Z0-9_-]*" & strings.MinRunes(1) & strings.MaxRunes(200)

#DocumentAttributeTarget: {
	TargetDocumentAttributeKey: #DocumentAttributeKey
	TargetDocumentAttributeValue?: #DocumentAttributeValue
	TargetDocumentAttributeValueDeletion?: bool
}

#DocumentAttributeValue: {
	DateValue?: #Timestamp
	LongValue?: #Long
	StringListValue?: [...string]
	StringValue?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#DocumentsMetadataConfiguration: {
	S3Prefix?: #S3ObjectKey
}

#ExcludeMimeTypesList: [...#MimeType]

#ExcludeSharedDrivesList: [...#SharedDriveId]

#ExcludeUserAccountsList: [...#UserAccount]

#GoogleDriveConfiguration: {
	ExcludeMimeTypes?: #ExcludeMimeTypesList
	ExcludeSharedDrives?: #ExcludeSharedDrivesList
	ExcludeUserAccounts?: #ExcludeUserAccountsList
	ExclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	FieldMappings?: #DataSourceToIndexFieldMappingList
	InclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	SecretArn: #SecretArn
}

#HookConfiguration: {
	InvocationCondition?: #DocumentAttributeCondition
	LambdaArn: #LambdaArn
	S3Bucket: #S3BucketName
}

#Id: string & strings.MinRunes(1) & strings.MaxRunes(100)

#IndexFieldName: string & strings.MinRunes(1) & strings.MaxRunes(30)

#IndexId: string & strings.MinRunes(36) & strings.MaxRunes(36)

#InlineConfigurations: [...#InlineCustomDocumentEnrichmentConfiguration]

#InlineCustomDocumentEnrichmentConfiguration: {
	Condition?: #DocumentAttributeCondition
	DocumentContentDeletion?: bool
	Target?: #DocumentAttributeTarget
}

#LambdaArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#LanguageCode: string & =~"[a-zA-Z-]*" & strings.MinRunes(2) & strings.MaxRunes(10)

#Long: int

#MimeType: string & strings.MinRunes(1) & strings.MaxRunes(256)

#Name: string & strings.MinRunes(1) & strings.MaxRunes(1000)

#OneDriveConfiguration: {
	DisableLocalGroups?: #DisableLocalGroups
	ExclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	FieldMappings?: #DataSourceToIndexFieldMappingList
	InclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	OneDriveUsers: #OneDriveUsers
	SecretArn: #SecretArn
	TenantDomain: #TenantDomain
}

#OneDriveUser: string & =~"^(?!\\s).+@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$" & strings.MinRunes(1) & strings.MaxRunes(256)

#OneDriveUserList: [...#OneDriveUser]

#OneDriveUsers: {
	OneDriveUserList?: #OneDriveUserList
	OneDriveUserS3Path?: #S3Path
}

#ProxyConfiguration: {
	Credentials?: #SecretArn
	Host: string & =~"([^\\s]*)" & strings.MinRunes(1) & strings.MaxRunes(253)
	Port: int & >=1 & <=65535
}

#QueryIdentifiersEnclosingOption: "DOUBLE_QUOTES" | "NONE"

#RoleArn: string & =~"arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}" & strings.MinRunes(1) & strings.MaxRunes(1284)

#S3BucketName: string & =~"[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]" & strings.MinRunes(3) & strings.MaxRunes(63)

#S3DataSourceConfiguration: {
	AccessControlListConfiguration?: #AccessControlListConfiguration
	BucketName: #S3BucketName
	DocumentsMetadataConfiguration?: #DocumentsMetadataConfiguration
	ExclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	InclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	InclusionPrefixes?: #DataSourceInclusionsExclusionsStrings
}

#S3ObjectKey: string & strings.MinRunes(1) & strings.MaxRunes(1024)

#S3Path: {
	Bucket: #S3BucketName
	Key: #S3ObjectKey
}

#SalesforceChatterFeedConfiguration: {
	DocumentDataFieldName: #DataSourceFieldName
	DocumentTitleFieldName?: #DataSourceFieldName
	FieldMappings?: #DataSourceToIndexFieldMappingList
	IncludeFilterTypes?: #SalesforceChatterFeedIncludeFilterTypes
}

#SalesforceChatterFeedIncludeFilterType: "ACTIVE_USER" | "STANDARD_USER"

#SalesforceChatterFeedIncludeFilterTypes: [...#SalesforceChatterFeedIncludeFilterType]

#SalesforceConfiguration: {
	ChatterFeedConfiguration?: #SalesforceChatterFeedConfiguration
	CrawlAttachments?: bool
	ExcludeAttachmentFilePatterns?: #DataSourceInclusionsExclusionsStrings
	IncludeAttachmentFilePatterns?: #DataSourceInclusionsExclusionsStrings
	KnowledgeArticleConfiguration?: #SalesforceKnowledgeArticleConfiguration
	SecretArn: #SecretArn
	ServerUrl: #Url
	StandardObjectAttachmentConfiguration?: #SalesforceStandardObjectAttachmentConfiguration
	StandardObjectConfigurations?: #SalesforceStandardObjectConfigurationList
}

#SalesforceCustomKnowledgeArticleTypeConfiguration: {
	DocumentDataFieldName: #DataSourceFieldName
	DocumentTitleFieldName?: #DataSourceFieldName
	FieldMappings?: #DataSourceToIndexFieldMappingList
	Name: #SalesforceCustomKnowledgeArticleTypeName
}

#SalesforceCustomKnowledgeArticleTypeConfigurationList: [...#SalesforceCustomKnowledgeArticleTypeConfiguration]

#SalesforceCustomKnowledgeArticleTypeName: string & strings.MinRunes(1) & strings.MaxRunes(100)

#SalesforceKnowledgeArticleConfiguration: {
	CustomKnowledgeArticleTypeConfigurations?: #SalesforceCustomKnowledgeArticleTypeConfigurationList
	IncludedStates: #SalesforceKnowledgeArticleStateList
	StandardKnowledgeArticleTypeConfiguration?: #SalesforceStandardKnowledgeArticleTypeConfiguration
}

#SalesforceKnowledgeArticleState: "DRAFT" | "PUBLISHED" | "ARCHIVED"

#SalesforceKnowledgeArticleStateList: [...#SalesforceKnowledgeArticleState]

#SalesforceStandardKnowledgeArticleTypeConfiguration: {
	DocumentDataFieldName: #DataSourceFieldName
	DocumentTitleFieldName?: #DataSourceFieldName
	FieldMappings?: #DataSourceToIndexFieldMappingList
}

#SalesforceStandardObjectAttachmentConfiguration: {
	DocumentTitleFieldName?: #DataSourceFieldName
	FieldMappings?: #DataSourceToIndexFieldMappingList
}

#SalesforceStandardObjectConfiguration: {
	DocumentDataFieldName: #DataSourceFieldName
	DocumentTitleFieldName?: #DataSourceFieldName
	FieldMappings?: #DataSourceToIndexFieldMappingList
	Name: #SalesforceStandardObjectName
}

#SalesforceStandardObjectConfigurationList: [...#SalesforceStandardObjectConfiguration]

#SalesforceStandardObjectName: "ACCOUNT" | "CAMPAIGN" | "CASE" | "CONTACT" | "CONTRACT" | "DOCUMENT" | "GROUP" | "IDEA" | "LEAD" | "OPPORTUNITY" | "PARTNER" | "PRICEBOOK" | "PRODUCT" | "PROFILE" | "SOLUTION" | "TASK" | "USER"

#Schedule: string & strings.MaxRunes(1000)

#SecretArn: string & =~"arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}" & strings.MinRunes(1) & strings.MaxRunes(1284)

#ServiceNowAuthenticationType: "HTTP_BASIC" | "OAUTH2"

#ServiceNowBuildVersionType: "LONDON" | "OTHERS"

#ServiceNowConfiguration: {
	AuthenticationType?: #ServiceNowAuthenticationType
	HostUrl: #ServiceNowHostUrl
	KnowledgeArticleConfiguration?: #ServiceNowKnowledgeArticleConfiguration
	SecretArn: #SecretArn
	ServiceCatalogConfiguration?: #ServiceNowServiceCatalogConfiguration
	ServiceNowBuildVersion: #ServiceNowBuildVersionType
}

#ServiceNowHostUrl: string & =~"^(?!(^(https?|ftp|file):\\/\\/))[a-z0-9-]+(\\.service-now\\.com)$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#ServiceNowKnowledgeArticleConfiguration: {
	CrawlAttachments?: bool
	DocumentDataFieldName: #DataSourceFieldName
	DocumentTitleFieldName?: #DataSourceFieldName
	ExcludeAttachmentFilePatterns?: #DataSourceInclusionsExclusionsStrings
	FieldMappings?: #DataSourceToIndexFieldMappingList
	FilterQuery?: #ServiceNowKnowledgeArticleFilterQuery
	IncludeAttachmentFilePatterns?: #DataSourceInclusionsExclusionsStrings
}

#ServiceNowKnowledgeArticleFilterQuery: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#ServiceNowServiceCatalogConfiguration: {
	CrawlAttachments?: bool
	DocumentDataFieldName: #DataSourceFieldName
	DocumentTitleFieldName?: #DataSourceFieldName
	ExcludeAttachmentFilePatterns?: #DataSourceInclusionsExclusionsStrings
	FieldMappings?: #DataSourceToIndexFieldMappingList
	IncludeAttachmentFilePatterns?: #DataSourceInclusionsExclusionsStrings
}

#SharePointConfiguration: {
	CrawlAttachments?: bool
	DisableLocalGroups?: #DisableLocalGroups
	DocumentTitleFieldName?: #DataSourceFieldName
	ExclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	FieldMappings?: #DataSourceToIndexFieldMappingList
	InclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	SecretArn: #SecretArn
	SharePointVersion: "SHAREPOINT_ONLINE" | "SHAREPOINT_2013" | "SHAREPOINT_2016"
	SslCertificateS3Path?: #S3Path
	Urls: [...#Url]
	UseChangeLog?: bool
	VpcConfiguration?: #DataSourceVpcConfiguration
}

#SharedDriveId: string & strings.MinRunes(1) & strings.MaxRunes(256)

#SqlConfiguration: {
	QueryIdentifiersEnclosingOption?: #QueryIdentifiersEnclosingOption
}

#TableName: string & strings.MinRunes(1) & strings.MaxRunes(100)

#Tag: {
	// A string used to identify this tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TagList: [...#Tag]

#TemplateConfiguration: {
	Template: {...}
}

#TenantDomain: string & =~"^([a-zA-Z0-9]+(-[a-zA-Z0-9]+)*\\.)+[a-z]{2,}$" & strings.MinRunes(1) & strings.MaxRunes(256)

#Timestamp: string

#Type: "S3" | "SHAREPOINT" | "SALESFORCE" | "ONEDRIVE" | "SERVICENOW" | "DATABASE" | "CUSTOM" | "CONFLUENCE" | "GOOGLEDRIVE" | "WEBCRAWLER" | "WORKDOCS" | "TEMPLATE"

#Url: string & =~"^(https?|ftp|file)://([^\\s]*)" & strings.MinRunes(1) & strings.MaxRunes(2048)

#UserAccount: string & strings.MinRunes(1) & strings.MaxRunes(256)

#WebCrawlerAuthenticationConfiguration: {
	BasicAuthentication?: #WebCrawlerBasicAuthenticationList
}

#WebCrawlerBasicAuthentication: {
	Credentials: #SecretArn
	Host: string & =~"([^\\s]*)" & strings.MinRunes(1) & strings.MaxRunes(253)
	Port: int & >=1 & <=65535
}

#WebCrawlerBasicAuthenticationList: [...#WebCrawlerBasicAuthentication]

#WebCrawlerConfiguration: {
	AuthenticationConfiguration?: #WebCrawlerAuthenticationConfiguration
	CrawlDepth?: int & >=1 & <=10
	MaxContentSizePerPageInMegaBytes?: number & >=0 & <=50
	MaxLinksPerPage?: int & >=1 & <=1000
	MaxUrlsPerMinuteCrawlRate?: int & >=1 & <=300
	ProxyConfiguration?: #ProxyConfiguration
	UrlExclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	UrlInclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	Urls: #WebCrawlerUrls
}

#WebCrawlerSeedUrl: string & =~"^(https?)://([^\\s]*)" & strings.MinRunes(1) & strings.MaxRunes(2048)

#WebCrawlerSeedUrlConfiguration: {
	SeedUrls: #WebCrawlerSeedUrlList
	WebCrawlerMode?: "HOST_ONLY" | "SUBDOMAINS" | "EVERYTHING"
}

#WebCrawlerSeedUrlList: [...#WebCrawlerSeedUrl]

#WebCrawlerSiteMap: string & =~"^(https?):\\/\\/([^\\s]*)" & strings.MinRunes(1) & strings.MaxRunes(2048)

#WebCrawlerSiteMaps: [...#WebCrawlerSiteMap]

#WebCrawlerSiteMapsConfiguration: {
	SiteMaps: #WebCrawlerSiteMaps
}

#WebCrawlerUrls: {
	SeedUrlConfiguration?: #WebCrawlerSeedUrlConfiguration
	SiteMapsConfiguration?: #WebCrawlerSiteMapsConfiguration
}

#WorkDocsConfiguration: {
	CrawlComments?: bool
	ExclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	FieldMappings?: #DataSourceToIndexFieldMappingList
	InclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	OrganizationId: string & =~"d-[0-9a-fA-F]{10}" & strings.MinRunes(12) & strings.MaxRunes(12)
	UseChangeLog?: bool
}
