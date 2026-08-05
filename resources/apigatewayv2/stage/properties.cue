package stage

#Properties: {
	// Settings for logging access in this stage.
	AccessLogSettings?: #AccessLogSettings
	// The API identifier.
	ApiId: string
	// Specifies whether updates to an API automatically trigger a new deployment. The default value is false.
	AutoDeploy?: bool
	// The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.
	ClientCertificateId?: string
	// The default route settings for the stage.
	DefaultRouteSettings?: #RouteSettings
	// The deployment identifier for the API stage. Can't be updated if autoDeploy is enabled.
	DeploymentId?: string
	// The description for the API stage.
	Description?: string
	// Route settings for the stage.
	RouteSettings?: {...}
	// The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.
	StageName: string
	// A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&=,]+.
	StageVariables?: {...}
	// The collection of tags. Each tag element is associated with a given resource.
	Tags?: {...}
}

#AccessLogSettings: {
	DestinationArn?: string
	Format?: string
}

#RouteSettings: {
	DataTraceEnabled?: bool
	DetailedMetricsEnabled?: bool
	LoggingLevel?: string
	ThrottlingBurstLimit?: int
	ThrottlingRateLimit?: number
}
