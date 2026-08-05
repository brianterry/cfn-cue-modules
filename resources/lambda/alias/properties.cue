package alias

#Properties: {
	// A description of the alias.
	Description?: string
	// The name of the Lambda function.
	FunctionName: string
	// The function version that the alias invokes.
	FunctionVersion: string
	// The name of the alias.
	Name: string
	// Specifies a provisioned concurrency configuration for a function's alias.
	ProvisionedConcurrencyConfig?: #ProvisionedConcurrencyConfiguration
	// The routing configuration of the alias.
	RoutingConfig?: #AliasRoutingConfiguration
}

#AliasRoutingConfiguration: {
	// The second version, and the percentage of traffic that's routed to it.
	AdditionalVersionWeights?: [...#VersionWeight]
}

#ProvisionedConcurrencyConfiguration: {
	// The amount of provisioned concurrency to allocate for the alias.
	ProvisionedConcurrentExecutions: int
}

#VersionWeight: {
	// The qualifier of the second version.
	FunctionVersion: string
	// The percentage of traffic that the alias routes to the second version.
	FunctionWeight: number
}
