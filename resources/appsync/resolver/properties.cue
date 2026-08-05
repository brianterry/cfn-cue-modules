package resolver

#Properties: {
	// The APSYlong GraphQL API to which you want to attach this resolver.
	ApiId: string
	// The caching configuration for the resolver.
	CachingConfig?: #CachingConfig
	// The ``resolver`` code that contains the request and response functions. When code is used, the ``runtime`` is required. The runtime value must be ``APPSYNC_JS``.
	Code?: string
	// The Amazon S3 endpoint.
	CodeS3Location?: string
	// The resolver data source name.
	DataSourceName?: string
	// The GraphQL field on a type that invokes the resolver.
	FieldName: string
	// The resolver type.
	// +  *UNIT*: A UNIT resolver type. A UNIT resolver is the default resolver type. You can use a UNIT resolver to run a GraphQL query against a single data source.
	// +  *PIPELINE*: A PIPELINE resolver type. You can use a PIPELINE resolver to invoke a series of ``Function`` objects in a serial manner. You can use a pipeline resolver to run a GraphQL query against multiple data sources.
	Kind?: string
	// The maximum number of resolver request inputs that will be sent to a single LAMlong function in a ``BatchInvoke`` operation.
	MaxBatchSize?: int
	// Enables or disables enhanced resolver metrics for specified resolvers. Note that ``MetricsConfig`` won't be used unless the ``resolverLevelMetricsBehavior`` value is set to ``PER_RESOLVER_METRICS``. If the ``resolverLevelMetricsBehavior`` is set to ``FULL_REQUEST_RESOLVER_METRICS`` instead, ``MetricsConfig`` will be ignored. However, you can still set its value.
	MetricsConfig?: "ENABLED" | "DISABLED"
	// Functions linked with the pipeline resolver.
	PipelineConfig?: #PipelineConfig
	// The request mapping template.
	// Request mapping templates are optional when using a Lambda data source. For all other data sources, a request mapping template is required.
	RequestMappingTemplate?: string
	// The location of a request mapping template in an S3 bucket. Use this if you want to provision with a template file in S3 rather than embedding it in your CFNshort template.
	RequestMappingTemplateS3Location?: string
	// The response mapping template.
	ResponseMappingTemplate?: string
	// The location of a response mapping template in an S3 bucket. Use this if you want to provision with a template file in S3 rather than embedding it in your CFNshort template.
	ResponseMappingTemplateS3Location?: string
	// Describes a runtime used by an APSYlong resolver or APSYlong function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified.
	Runtime?: #AppSyncRuntime
	// The ``SyncConfig`` for a resolver attached to a versioned data source.
	SyncConfig?: #SyncConfig
	// The GraphQL type that invokes this resolver.
	TypeName: string
}

#AppSyncRuntime: {
	// The ``name`` of the runtime to use. Currently, the only allowed value is ``APPSYNC_JS``.
	Name: string
	// The ``version`` of the runtime to use. Currently, the only allowed version is ``1.0.0``.
	RuntimeVersion: string
}

#CachingConfig: {
	// The caching keys for a resolver that has caching activated.
	// Valid values are entries from the ``$context.arguments``, ``$context.source``, and ``$context.identity`` maps.
	CachingKeys?: [...string]
	// The TTL in seconds for a resolver that has caching activated.
	// Valid values are 1–3,600 seconds.
	Ttl: number
}

#LambdaConflictHandlerConfig: {
	// The Amazon Resource Name (ARN) for the Lambda function to use as the Conflict Handler.
	LambdaConflictHandlerArn?: string
}

#PipelineConfig: {
	// A list of ``Function`` objects.
	Functions?: [...string]
}

#SyncConfig: {
	// The Conflict Detection strategy to use.
	// +  *VERSION*: Detect conflicts based on object versions for this resolver.
	// +  *NONE*: Do not detect conflicts when invoking this resolver.
	ConflictDetection: string
	// The Conflict Resolution strategy to perform in the event of a conflict.
	// +  *OPTIMISTIC_CONCURRENCY*: Resolve conflicts by rejecting mutations when versions don't match the latest version at the server.
	// +  *AUTOMERGE*: Resolve conflicts with the Automerge conflict resolution strategy.
	// +  *LAMBDA*: Resolve conflicts with an LAMlong function supplied in the ``LambdaConflictHandlerConfig``.
	ConflictHandler?: string
	// The ``LambdaConflictHandlerConfig`` when configuring ``LAMBDA`` as the Conflict Handler.
	LambdaConflictHandlerConfig?: #LambdaConflictHandlerConfig
}
