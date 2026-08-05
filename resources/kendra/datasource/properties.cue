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

#ColumnConfiguration: {
	ChangeDetectingColumns: #ChangeDetectingColumns
	DocumentDataColumnName: #ColumnName
	DocumentIdColumnName: #ColumnName
	DocumentTitleColumnName?: #ColumnName
	FieldMappings?: #DataSourceToIndexFieldMappingList
}

#ConfluenceAttachmentConfiguration: {
	AttachmentFieldMappings?: #ConfluenceAttachmentFieldMappingsList
	CrawlAttachments?: bool
}

#ConfluenceAttachmentToIndexFieldMapping: {
	DataSourceFieldName: #ConfluenceAttachmentFieldName
	DateFieldFormat?: #DateFieldFormat
	IndexFieldName: #IndexFieldName
}

#ConfluenceBlogConfiguration: {
	BlogFieldMappings?: #ConfluenceBlogFieldMappingsList
}

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

#ConfluenceSpaceToIndexFieldMapping: {
	DataSourceFieldName: #ConfluenceSpaceFieldName
	DateFieldFormat?: #DateFieldFormat
	IndexFieldName: #IndexFieldName
}

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

#DataSourceToIndexFieldMapping: {
	DataSourceFieldName: #DataSourceFieldName
	DateFieldFormat?: #DateFieldFormat
	IndexFieldName: #IndexFieldName
}

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

#DocumentAttributeCondition: {
	ConditionDocumentAttributeKey: #DocumentAttributeKey
	ConditionOnValue?: #DocumentAttributeValue
	Operator: #ConditionOperator
}

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

#InlineCustomDocumentEnrichmentConfiguration: {
	Condition?: #DocumentAttributeCondition
	DocumentContentDeletion?: bool
	Target?: #DocumentAttributeTarget
}

#OneDriveConfiguration: {
	DisableLocalGroups?: #DisableLocalGroups
	ExclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	FieldMappings?: #DataSourceToIndexFieldMappingList
	InclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	OneDriveUsers: #OneDriveUsers
	SecretArn: #SecretArn
	TenantDomain: #TenantDomain
}

#OneDriveUsers: {
	OneDriveUserList?: #OneDriveUserList
	OneDriveUserS3Path?: #S3Path
}

#ProxyConfiguration: {
	Credentials?: #SecretArn
	Host: string & =~"([^\\s]*)" & strings.MinRunes(1) & strings.MaxRunes(253)
	Port: int & >=1 & <=65535
}

#S3DataSourceConfiguration: {
	AccessControlListConfiguration?: #AccessControlListConfiguration
	BucketName: #S3BucketName
	DocumentsMetadataConfiguration?: #DocumentsMetadataConfiguration
	ExclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	InclusionPatterns?: #DataSourceInclusionsExclusionsStrings
	InclusionPrefixes?: #DataSourceInclusionsExclusionsStrings
}

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

#SalesforceKnowledgeArticleConfiguration: {
	CustomKnowledgeArticleTypeConfigurations?: #SalesforceCustomKnowledgeArticleTypeConfigurationList
	IncludedStates: #SalesforceKnowledgeArticleStateList
	StandardKnowledgeArticleTypeConfiguration?: #SalesforceStandardKnowledgeArticleTypeConfiguration
}

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

#ServiceNowConfiguration: {
	AuthenticationType?: #ServiceNowAuthenticationType
	HostUrl: #ServiceNowHostUrl
	KnowledgeArticleConfiguration?: #ServiceNowKnowledgeArticleConfiguration
	SecretArn: #SecretArn
	ServiceCatalogConfiguration?: #ServiceNowServiceCatalogConfiguration
	ServiceNowBuildVersion: #ServiceNowBuildVersionType
}

#ServiceNowKnowledgeArticleConfiguration: {
	CrawlAttachments?: bool
	DocumentDataFieldName: #DataSourceFieldName
	DocumentTitleFieldName?: #DataSourceFieldName
	ExcludeAttachmentFilePatterns?: #DataSourceInclusionsExclusionsStrings
	FieldMappings?: #DataSourceToIndexFieldMappingList
	FilterQuery?: #ServiceNowKnowledgeArticleFilterQuery
	IncludeAttachmentFilePatterns?: #DataSourceInclusionsExclusionsStrings
}

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

#SqlConfiguration: {
	QueryIdentifiersEnclosingOption?: #QueryIdentifiersEnclosingOption
}

#Tag: {
	// A string used to identify this tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TemplateConfiguration: {
	Template: {...}
}

#WebCrawlerAuthenticationConfiguration: {
	BasicAuthentication?: #WebCrawlerBasicAuthenticationList
}

#WebCrawlerBasicAuthentication: {
	Credentials: #SecretArn
	Host: string & =~"([^\\s]*)" & strings.MinRunes(1) & strings.MaxRunes(253)
	Port: int & >=1 & <=65535
}

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

#WebCrawlerSeedUrlConfiguration: {
	SeedUrls: #WebCrawlerSeedUrlList
	WebCrawlerMode?: "HOST_ONLY" | "SUBDOMAINS" | "EVERYTHING"
}

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
