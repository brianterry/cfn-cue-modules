package datasource

import "strings"

#Properties: {
	DataDeletionPolicy?: #DataDeletionPolicy
	// Description of the Resource.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// The unique identifier of the knowledge base to which to add the data source.
	KnowledgeBaseId: string & =~"^[0-9a-zA-Z]{10}$"
	// The name of the data source.
	Name: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	ServerSideEncryptionConfiguration?: #ServerSideEncryptionConfiguration
	VectorIngestionConfiguration?: #VectorIngestionConfiguration
}

#AudioExtractionConfiguration: {
	AudioExtractionStatus: #EnabledOrDisabledState
}

#BedrockDataAutomationConfiguration: {
	ParsingModality?: #ParsingModality
}

#BedrockFoundationModelConfiguration: {
	ModelArn: #ModelArn
	ParsingModality?: #ParsingModality
	ParsingPrompt?: #ParsingPrompt
}

#BedrockFoundationModelContextEnrichmentConfiguration: {
	EnrichmentStrategyConfiguration: #EnrichmentStrategyConfiguration
	ModelArn: #ModelArn
}

#ChunkingConfiguration: {
	ChunkingStrategy: #ChunkingStrategy
	FixedSizeChunkingConfiguration?: #FixedSizeChunkingConfiguration
	HierarchicalChunkingConfiguration?: #HierarchicalChunkingConfiguration
	SemanticChunkingConfiguration?: #SemanticChunkingConfiguration
}

#ConfluenceCrawlerConfiguration: {
	FilterConfiguration?: #CrawlFilterConfiguration
}

#ConfluenceDataSourceConfiguration: {
	CrawlerConfiguration?: #ConfluenceCrawlerConfiguration
	SourceConfiguration: #ConfluenceSourceConfiguration
}

#ConfluenceSourceConfiguration: {
	// The supported authentication type to authenticate and connect to your Confluence instance.
	AuthType: "BASIC" | "OAUTH2_CLIENT_CREDENTIALS"
	// The Amazon Resource Name of an AWS Secrets Manager secret that stores your authentication credentials for your Confluence instance URL. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see Confluence connection configuration.
	CredentialsSecretArn: string & =~"^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$"
	// The supported host type, whether online/cloud or server/on-premises.
	HostType: "SAAS"
	// The Confluence host URL or instance URL.
	HostUrl: string & =~"^https://[A-Za-z0-9][^\\s]*$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#ContextEnrichmentConfiguration: {
	BedrockFoundationModelConfiguration?: #BedrockFoundationModelContextEnrichmentConfiguration
	Type: #ContextEnrichmentType
}

#CrawlFilterConfiguration: {
	PatternObjectFilter?: #PatternObjectFilterConfiguration
	// The crawl filter type.
	Type: "PATTERN"
}

#CustomTransformationConfiguration: {
	IntermediateStorage: #IntermediateStorage
	// A list of Lambda functions that process documents.
	Transformations: [...#Transformation]
}

#DataSourceConfiguration: {
	ConfluenceConfiguration?: #ConfluenceDataSourceConfiguration
	ManagedKnowledgeBaseConnectorConfiguration?: #ManagedKnowledgeBaseConnectorConfiguration
	S3Configuration?: #S3DataSourceConfiguration
	SalesforceConfiguration?: #SalesforceDataSourceConfiguration
	SharePointConfiguration?: #SharePointDataSourceConfiguration
	Type: #DataSourceType
	WebConfiguration?: #WebDataSourceConfiguration
}

#DeletionProtectionConfiguration: {
	DeletionProtectionStatus: #EnabledOrDisabledState
	// Threshold for deletion protection.
	DeletionProtectionThreshold?: int & >=0 & <=100
}

#EnrichmentStrategyConfiguration: {
	Method: #EnrichmentStrategyMethod
}

#FixedSizeChunkingConfiguration: {
	// The maximum number of tokens to include in a chunk.
	MaxTokens: int & >=1
	// The percentage of overlap between adjacent chunks of a data source.
	OverlapPercentage: int & >=1 & <=99
}

#HierarchicalChunkingConfiguration: {
	// Token settings for each layer.
	LevelConfigurations: [...#HierarchicalChunkingLevelConfiguration]
	// The number of tokens to repeat across chunks in the same layer.
	OverlapTokens: int & >=1
}

#HierarchicalChunkingLevelConfiguration: {
	// The maximum number of tokens that a chunk can contain in this layer.
	MaxTokens: int & >=1 & <=8192
}

#ImageExtractionConfiguration: {
	ImageExtractionStatus: #EnabledOrDisabledState
}

#IntermediateStorage: {
	S3Location: #S3Location
}

#ManagedKnowledgeBaseConnectorConfiguration: {
	// Connector-specific parameters.
	ConnectorParameters?: {...}
	DeletionProtectionConfiguration?: #DeletionProtectionConfiguration
	MediaExtractionConfiguration?: #MediaExtractionConfiguration
}

#MediaExtractionConfiguration: {
	AudioExtractionConfiguration?: #AudioExtractionConfiguration
	ImageExtractionConfiguration?: #ImageExtractionConfiguration
	VideoExtractionConfiguration?: #VideoExtractionConfiguration
}

#ParsingConfiguration: {
	BedrockDataAutomationConfiguration?: #BedrockDataAutomationConfiguration
	BedrockFoundationModelConfiguration?: #BedrockFoundationModelConfiguration
	ParsingStrategy: #ParsingStrategy
}

#ParsingPrompt: {
	// Instructions for interpreting the contents of a document.
	ParsingPromptText: string & strings.MinRunes(1) & strings.MaxRunes(10000)
}

#PatternObjectFilter: {
	ExclusionFilters?: #FilterList
	InclusionFilters?: #FilterList
	// The supported object type or content type of the data source.
	ObjectType: string & strings.MinRunes(1) & strings.MaxRunes(50)
}

#PatternObjectFilterConfiguration: {
	Filters: #PatternObjectFilterList
}

#S3DataSourceConfiguration: {
	// The ARN of the bucket that contains the data source.
	BucketArn: string & =~"^arn:aws(-cn|-us-gov|-eusc|-iso(-[b-f])?)?:s3:::[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The account ID for the owner of the S3 bucket.
	BucketOwnerAccountId?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// A list of S3 prefixes that define the object containing the data sources.
	InclusionPrefixes?: [...string & strings.MinRunes(1) & strings.MaxRunes(300)]
}

#S3Location: {
	// The location's URI
	URI: string & =~"^s3://.{1,128}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#SalesforceCrawlerConfiguration: {
	FilterConfiguration?: #CrawlFilterConfiguration
}

#SalesforceDataSourceConfiguration: {
	CrawlerConfiguration?: #SalesforceCrawlerConfiguration
	SourceConfiguration: #SalesforceSourceConfiguration
}

#SalesforceSourceConfiguration: {
	// The supported authentication type to authenticate and connect to your Salesforce instance.
	AuthType: "OAUTH2_CLIENT_CREDENTIALS"
	// The Amazon Resource Name of an AWS Secrets Manager secret that stores your authentication credentials for your Salesforce instance URL. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see Salesforce connection configuration.
	CredentialsSecretArn: string & =~"^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$"
	// The Salesforce host URL or instance URL.
	HostUrl: string & =~"^https://[A-Za-z0-9][^\\s]*$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#SeedUrl: {
	// A web url.
	Url: string & =~"^https?://[A-Za-z0-9][^\\s]*$"
}

#SemanticChunkingConfiguration: {
	// The dissimilarity threshold for splitting chunks.
	BreakpointPercentileThreshold: int & >=50 & <=99
	// The buffer size.
	BufferSize: int & >=0 & <=1
	// The maximum number of tokens that a chunk can contain.
	MaxTokens: int & >=1
}

#ServerSideEncryptionConfiguration: {
	// The ARN of the AWS KMS key used to encrypt the resource.
	KmsKeyArn?: string & =~"^arn:aws(-cn|-us-gov|-eusc|-iso(-[b-f])?)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#SharePointCrawlerConfiguration: {
	FilterConfiguration?: #CrawlFilterConfiguration
}

#SharePointDataSourceConfiguration: {
	CrawlerConfiguration?: #SharePointCrawlerConfiguration
	SourceConfiguration: #SharePointSourceConfiguration
}

#SharePointSourceConfiguration: {
	// The supported authentication type to authenticate and connect to your SharePoint site/sites.
	AuthType: "OAUTH2_CLIENT_CREDENTIALS" | "OAUTH2_SHAREPOINT_APP_ONLY_CLIENT_CREDENTIALS"
	// The Amazon Resource Name of an AWS Secrets Manager secret that stores your authentication credentials for your SharePoint site/sites. For more information on the key-value pairs that must be included in your secret, depending on your authentication type, see SharePoint connection configuration.
	CredentialsSecretArn: string & =~"^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$"
	// The domain of your SharePoint instance or site URL/URLs.
	Domain: string & strings.MinRunes(1) & strings.MaxRunes(50)
	// The supported host type, whether online/cloud or server/on-premises.
	HostType: "ONLINE"
	// A list of one or more SharePoint site URLs.
	SiteUrls: [...string & =~"^https://[A-Za-z0-9][^\\s]*$"]
	// The identifier of your Microsoft 365 tenant.
	TenantId?: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
}

#Transformation: {
	// When the service applies the transformation.
	StepToApply: "POST_CHUNKING"
	TransformationFunction: #TransformationFunction
}

#TransformationFunction: {
	TransformationLambdaConfiguration: #TransformationLambdaConfiguration
}

#TransformationLambdaConfiguration: {
	// The function's ARN identifier.
	LambdaArn: string & =~"^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_\\.]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$" & strings.MinRunes(0) & strings.MaxRunes(2048)
}

#UrlConfiguration: {
	SeedUrls: #SeedUrls
}

#VectorIngestionConfiguration: {
	ChunkingConfiguration?: #ChunkingConfiguration
	ContextEnrichmentConfiguration?: #ContextEnrichmentConfiguration
	CustomTransformationConfiguration?: #CustomTransformationConfiguration
	ParsingConfiguration?: #ParsingConfiguration
}

#VideoExtractionConfiguration: {
	VideoExtractionStatus: #EnabledOrDisabledState
}

#WebCrawlerConfiguration: {
	CrawlerLimits?: #WebCrawlerLimits
	ExclusionFilters?: #FilterList
	InclusionFilters?: #FilterList
	Scope?: #WebScopeType
	// The suffix that will be included in the user agent header.
	UserAgent?: string & strings.MinRunes(15) & strings.MaxRunes(40)
	// The full user agent header, including UUID and suffix.
	UserAgentHeader?: string & strings.MinRunes(61) & strings.MaxRunes(86)
}

#WebCrawlerLimits: {
	// Maximum number of pages the crawler can crawl.
	MaxPages?: int & >=1
	// Rate of web URLs retrieved per minute.
	RateLimit?: int & >=1 & <=300
}

#WebDataSourceConfiguration: {
	CrawlerConfiguration?: #WebCrawlerConfiguration
	SourceConfiguration: #WebSourceConfiguration
}

#WebSourceConfiguration: {
	UrlConfiguration: #UrlConfiguration
}
