package knowledgebase

import "strings"

#Properties: {
	// Description of the Resource.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	KnowledgeBaseConfiguration: #KnowledgeBaseConfiguration
	// The name of the knowledge base.
	Name: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	// The ARN of the IAM role with permissions to invoke API operations on the knowledge base. The ARN must begin with AmazonBedrockExecutionRoleForKnowledgeBase_
	RoleArn: string & =~"^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/.+$" & strings.MaxRunes(2048)
	StorageConfiguration?: #StorageConfiguration
	Tags?: #TagsMap
}

#AudioConfiguration: {
	SegmentationConfiguration: #AudioSegmentationConfiguration
}

#AudioSegmentationConfiguration: {
	FixedLengthDuration: #FixedLengthDuration
}

#BedrockEmbeddingModelConfiguration: {
	Audio?: #AudioConfigurations
	// The dimensions details for the vector configuration used on the Bedrock embeddings model.
	Dimensions?: int & >=0 & <=4096
	// The data type for the vectors when using a model to convert text into vector embeddings.
	EmbeddingDataType?: "FLOAT32" | "BINARY"
	Video?: #VideoConfigurations
}

#CuratedQuery: {
	NaturalLanguage: #NaturalLanguageString
	Sql: #SqlString
}

#EmbeddingModelConfiguration: {
	BedrockEmbeddingModelConfiguration?: #BedrockEmbeddingModelConfiguration
}

#KendraKnowledgeBaseConfiguration: {
	KendraIndexArn: #KendraIndexArn
}

#KnowledgeBaseConfiguration: {
	KendraKnowledgeBaseConfiguration?: #KendraKnowledgeBaseConfiguration
	ManagedKnowledgeBaseConfiguration?: #ManagedKnowledgeBaseConfiguration
	SqlKnowledgeBaseConfiguration?: #SqlKnowledgeBaseConfiguration
	Type: #KnowledgeBaseType
	VectorKnowledgeBaseConfiguration?: #VectorKnowledgeBaseConfiguration
}

#ManagedKnowledgeBaseConfiguration: {
	// The ARN of the model used to create vector embeddings for the knowledge base.
	EmbeddingModelArn?: string & =~"^(arn:aws(-[^:]+)?:[a-z0-9-]+:[a-z0-9-]{1,20}:[0-9]{0,12}:[a-zA-Z0-9-:/._+]+)$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	EmbeddingModelConfiguration?: #EmbeddingModelConfiguration
	EmbeddingModelType?: #EmbeddingModelType
	ServerSideEncryptionConfiguration?: #ManagedKnowledgeBaseServerSideEncryptionConfiguration
}

#ManagedKnowledgeBaseServerSideEncryptionConfiguration: {
	// The ARN of the AWS KMS key used to encrypt the managed knowledge base.
	KmsKeyArn?: string & =~"^arn:aws(-cn|-us-gov|-eusc|-iso(-[b-f])?)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#MongoDbAtlasConfiguration: {
	// Name of the collection within MongoDB Atlas.
	CollectionName: string & =~"^.*$" & strings.MaxRunes(63)
	// The ARN of the secret that you created in AWS Secrets Manager that is linked to your Amazon Mongo database.
	CredentialsSecretArn: string & =~"^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$"
	// Name of the database within MongoDB Atlas.
	DatabaseName: string & =~"^.*$" & strings.MaxRunes(63)
	// MongoDB Atlas endpoint.
	Endpoint: string & =~"^[a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+\\.mongodb\\.net$" & strings.MaxRunes(2048)
	// MongoDB Atlas endpoint service name.
	EndpointServiceName?: string & =~"^(?:arn:aws(?:-us-gov|-cn|-iso|-iso-[a-z])*:.+:.*:\\d+:.+/.+$|[a-zA-Z0-9*]+[a-zA-Z0-9._-]*)$" & strings.MaxRunes(255)
	FieldMapping: #MongoDbAtlasFieldMapping
	// Name of a MongoDB Atlas text index.
	TextIndexName?: string & =~"^.*$" & strings.MaxRunes(2048)
	// Name of a MongoDB Atlas index.
	VectorIndexName: string & =~"^.*$" & strings.MaxRunes(2048)
}

#MongoDbAtlasFieldMapping: {
	// The name of the field in which Amazon Bedrock stores metadata about the vector store.
	MetadataField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
	TextField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
	VectorField: string & =~"^.*$" & strings.MaxRunes(2048)
}

#NeptuneAnalyticsConfiguration: {
	FieldMapping: #NeptuneAnalyticsFieldMapping
	// ARN for Neptune Analytics graph database.
	GraphArn: string & =~"^arn:aws(|-cn|-us-gov):neptune-graph:[a-zA-Z0-9-]*:[0-9]{12}:graph\\/g-[a-zA-Z0-9]{10}$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#NeptuneAnalyticsFieldMapping: {
	// The name of the field in which Amazon Bedrock stores metadata about the vector store.
	MetadataField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
	TextField: string & =~"^.*$" & strings.MaxRunes(2048)
}

#OpenSearchManagedClusterConfiguration: {
	// The Amazon Resource Name (ARN) of the OpenSearch domain.
	DomainArn: string & =~"^arn:aws(-cn|-us-gov|-eusc|-iso(-[b-f])?)?:es:([a-z]{2,}-){2,}\\d:\\d{12}:domain/[a-z][a-z0-9-]{3,28}$" & strings.MaxRunes(2048)
	// The endpoint URL the OpenSearch domain.
	DomainEndpoint: string & =~"^https://.*$" & strings.MaxRunes(2048)
	FieldMapping: #OpenSearchManagedClusterFieldMapping
	// The name of the vector store.
	VectorIndexName: string & =~"^(?![\\-_+.])[a-z0-9][a-z0-9\\-_\\.]*$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#OpenSearchManagedClusterFieldMapping: {
	// The name of the field in which Amazon Bedrock stores metadata about the vector store.
	MetadataField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
	TextField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
	VectorField: string & =~"^.*$" & strings.MaxRunes(2048)
}

#OpenSearchServerlessConfiguration: {
	// The ARN of the OpenSearch Service vector store.
	CollectionArn: string & =~"^arn:aws(|-cn|-us-gov|-iso):aoss:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:collection/[a-z0-9-]{3,32}$" & strings.MaxRunes(2048)
	FieldMapping: #OpenSearchServerlessFieldMapping
	// The name of the vector store.
	VectorIndexName: string & =~"^.*$" & strings.MaxRunes(2048)
}

#OpenSearchServerlessFieldMapping: {
	// The name of the field in which Amazon Bedrock stores metadata about the vector store.
	MetadataField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
	TextField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
	VectorField: string & =~"^.*$" & strings.MaxRunes(2048)
}

#PineconeConfiguration: {
	// The endpoint URL for your index management page.
	ConnectionString: string & =~"^.*$" & strings.MaxRunes(2048)
	// The ARN of the secret that you created in AWS Secrets Manager that is linked to your Pinecone API key.
	CredentialsSecretArn: string & =~"^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$"
	FieldMapping: #PineconeFieldMapping
	// The namespace to be used to write new data to your database.
	Namespace?: string & =~"^.*$" & strings.MaxRunes(2048)
}

#PineconeFieldMapping: {
	// The name of the field in which Amazon Bedrock stores metadata about the vector store.
	MetadataField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
	TextField: string & =~"^.*$" & strings.MaxRunes(2048)
}

#QueryGenerationColumn: {
	Description?: #DescriptionString
	Inclusion?: #InclusionType
	Name?: #QueryGenerationColumnName
}

#QueryGenerationConfiguration: {
	ExecutionTimeoutSeconds?: #QueryExecutionTimeoutSeconds
	GenerationContext?: #QueryGenerationContext
}

#QueryGenerationContext: {
	CuratedQueries?: #CuratedQueries
	Tables?: #QueryGenerationTables
}

#QueryGenerationTable: {
	Columns?: #QueryGenerationColumns
	Description?: #DescriptionString
	Inclusion?: #InclusionType
	Name: #QueryGenerationTableName
}

#RdsConfiguration: {
	// The ARN of the secret that you created in AWS Secrets Manager that is linked to your Amazon RDS database.
	CredentialsSecretArn: string & =~"^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$"
	// The name of your Amazon RDS database.
	DatabaseName: string & =~"^[a-zA-Z0-9_\\-]+$" & strings.MaxRunes(63)
	FieldMapping: #RdsFieldMapping
	// The ARN of the vector store.
	ResourceArn: string & =~"^arn:aws(|-cn|-us-gov):rds:[a-zA-Z0-9-]*:[0-9]{12}:cluster:[a-zA-Z0-9-]{1,63}$"
	// The name of the table in the database.
	TableName: string & =~"^[a-zA-Z0-9_\\.\\-]+$" & strings.MaxRunes(63)
}

#RdsFieldMapping: {
	// The name of the field in which Amazon Bedrock stores custom metadata about the vector store.
	CustomMetadataField?: string & =~"^[a-zA-Z0-9_\\-]+$" & strings.MaxRunes(63)
	// The name of the field in which Amazon Bedrock stores metadata about the vector store.
	MetadataField: string & =~"^[a-zA-Z0-9_\\-]+$" & strings.MaxRunes(63)
	// The name of the field in which Amazon Bedrock stores the ID for each entry.
	PrimaryKeyField: string & =~"^[a-zA-Z0-9_\\-]+$" & strings.MaxRunes(63)
	// The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
	TextField: string & =~"^[a-zA-Z0-9_\\-]+$" & strings.MaxRunes(63)
	// The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
	VectorField: string & =~"^[a-zA-Z0-9_\\-]+$" & strings.MaxRunes(63)
}

#RedisEnterpriseCloudConfiguration: {
	// The ARN of the secret that you created in AWS Secrets Manager that is linked to your Redis Enterprise Cloud database.
	CredentialsSecretArn: string & =~"^arn:aws(|-cn|-us-gov):secretsmanager:[a-z0-9-]{1,20}:([0-9]{12}|):secret:[a-zA-Z0-9!/_+=.@-]{1,512}$"
	// The endpoint URL of the Redis Enterprise Cloud database.
	Endpoint: string & =~"^.*$" & strings.MaxRunes(2048)
	FieldMapping: #RedisEnterpriseCloudFieldMapping
	// The name of the vector index.
	VectorIndexName: string & =~"^.*$" & strings.MaxRunes(2048)
}

#RedisEnterpriseCloudFieldMapping: {
	// The name of the field in which Amazon Bedrock stores metadata about the vector store.
	MetadataField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
	TextField: string & =~"^.*$" & strings.MaxRunes(2048)
	// The name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
	VectorField: string & =~"^.*$" & strings.MaxRunes(2048)
}

#RedshiftConfiguration: {
	QueryEngineConfiguration: #RedshiftQueryEngineConfiguration
	QueryGenerationConfiguration?: #QueryGenerationConfiguration
	StorageConfigurations: #RedshiftQueryEngineStorageConfigurations
}

#RedshiftProvisionedAuthConfiguration: {
	// Redshift database user
	DatabaseUser?: string
	Type: #RedshiftProvisionedAuthType
	UsernamePasswordSecretArn?: #SecretArn
}

#RedshiftProvisionedConfiguration: {
	AuthConfiguration: #RedshiftProvisionedAuthConfiguration
	ClusterIdentifier: #RedshiftClusterIdentifier
}

#RedshiftQueryEngineAwsDataCatalogStorageConfiguration: {
	TableNames: #AwsDataCatalogTableNames
}

#RedshiftQueryEngineConfiguration: {
	ProvisionedConfiguration?: #RedshiftProvisionedConfiguration
	ServerlessConfiguration?: #RedshiftServerlessConfiguration
	Type: #RedshiftQueryEngineType
}

#RedshiftQueryEngineRedshiftStorageConfiguration: {
	DatabaseName: #RedshiftDatabase
}

#RedshiftQueryEngineStorageConfiguration: {
	AwsDataCatalogConfiguration?: #RedshiftQueryEngineAwsDataCatalogStorageConfiguration
	RedshiftConfiguration?: #RedshiftQueryEngineRedshiftStorageConfiguration
	Type: #RedshiftQueryEngineStorageType
}

#RedshiftServerlessAuthConfiguration: {
	Type: #RedshiftServerlessAuthType
	UsernamePasswordSecretArn?: #SecretArn
}

#RedshiftServerlessConfiguration: {
	AuthConfiguration: #RedshiftServerlessAuthConfiguration
	WorkgroupArn: #WorkgroupArn
}

#S3Location: {
	// The location's URI
	URI: string & =~"^s3://.{1,128}$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#S3VectorsConfiguration: {
	// The Amazon Resource Name (ARN) of the vector index used for the knowledge base. This ARN identifies the specific vector index resource within Amazon Bedrock.
	IndexArn?: string
	// The name of the vector index used for the knowledge base. This name identifies the vector index within the Amazon Bedrock service.
	IndexName?: string & strings.MinRunes(3) & strings.MaxRunes(63)
	// The Amazon Resource Name (ARN) of the S3 bucket where vector embeddings are stored. This bucket contains the vector data used by the knowledge base.
	VectorBucketArn?: string
}

#SqlKnowledgeBaseConfiguration: {
	RedshiftConfiguration?: #RedshiftConfiguration
	Type: #QueryEngineType
}

#StorageConfiguration: {
	MongoDbAtlasConfiguration?: #MongoDbAtlasConfiguration
	NeptuneAnalyticsConfiguration?: #NeptuneAnalyticsConfiguration
	OpensearchManagedClusterConfiguration?: #OpenSearchManagedClusterConfiguration
	OpensearchServerlessConfiguration?: #OpenSearchServerlessConfiguration
	PineconeConfiguration?: #PineconeConfiguration
	RdsConfiguration?: #RdsConfiguration
	S3VectorsConfiguration?: #S3VectorsConfiguration
	Type: #KnowledgeBaseStorageType
}

#SupplementalDataStorageConfiguration: {
	SupplementalDataStorageLocations: #SupplementalDataStorageLocations
}

#SupplementalDataStorageLocation: {
	S3Location?: #S3Location
	SupplementalDataStorageLocationType: #SupplementalDataStorageLocationType
}

#VectorKnowledgeBaseConfiguration: {
	// The ARN of the model used to create vector embeddings for the knowledge base.
	EmbeddingModelArn: string & =~"^(arn:aws(-[^:]+)?:[a-z0-9-]+:[a-z0-9-]{1,20}:[0-9]{0,12}:[a-zA-Z0-9-:/._+]+)$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	EmbeddingModelConfiguration?: #EmbeddingModelConfiguration
	SupplementalDataStorageConfiguration?: #SupplementalDataStorageConfiguration
}

#VideoConfiguration: {
	SegmentationConfiguration: #VideoSegmentationConfiguration
}

#VideoSegmentationConfiguration: {
	FixedLengthDuration: #FixedLengthDuration
}
