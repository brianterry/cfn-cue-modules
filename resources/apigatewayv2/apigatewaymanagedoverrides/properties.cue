package apigatewaymanagedoverrides

#Properties: {
	ApiId: string
	Integration?: #IntegrationOverrides
	Route?: #RouteOverrides
	Stage?: #StageOverrides
}

#AccessLogSettings: {
	DestinationArn?: string
	Format?: string
}

#IntegrationOverrides: {
	Description?: string
	IntegrationMethod?: string
	PayloadFormatVersion?: string
	TimeoutInMillis?: int
}

#RouteOverrides: {
	AuthorizationScopes?: [...string]
	AuthorizationType?: string
	AuthorizerId?: string
	OperationName?: string
	Target?: string
}

#RouteSettings: {
	DataTraceEnabled?: bool
	DetailedMetricsEnabled?: bool
	LoggingLevel?: string
	ThrottlingBurstLimit?: int
	ThrottlingRateLimit?: number
}

#StageOverrides: {
	AccessLogSettings?: #AccessLogSettings
	AutoDeploy?: bool
	DefaultRouteSettings?: #RouteSettings
	Description?: string
	RouteSettings?: {...}
	StageVariables?: {...}
}
