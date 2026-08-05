package endpoint

#Properties: {
	// Specifies deployment configuration for updating the SageMaker endpoint. Includes rollback and update policies.
	DeploymentConfig?: #DeploymentConfig
	// The name of the endpoint configuration for the SageMaker endpoint. This is a required property.
	EndpointConfigName: string
	// Specifies a list of variant properties that you want to exclude when updating an endpoint.
	ExcludeRetainedVariantProperties?: [...#VariantProperty]
	// When set to true, retains all variant properties for an endpoint when it is updated.
	RetainAllVariantProperties?: bool
	// When set to true, retains the deployment configuration during endpoint updates.
	RetainDeploymentConfig?: bool
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Alarm: {
	// The name of the CloudWatch alarm.
	AlarmName: string
}

#AutoRollbackConfig: {
	// List of CloudWatch alarms to monitor during the deployment. If any alarm goes off, the deployment is rolled back.
	Alarms: [...#Alarm]
}

#BlueGreenUpdatePolicy: {
	// The maximum time allowed for the blue/green update, in seconds.
	MaximumExecutionTimeoutInSeconds?: int
	// The wait time before terminating the old endpoint during a blue/green deployment.
	TerminationWaitInSeconds?: int
	// The traffic routing configuration for the blue/green deployment.
	TrafficRoutingConfiguration: #TrafficRoutingConfig
}

#CapacitySize: {
	// Specifies whether the `Value` is an instance count or a capacity unit.
	Type: string
	// The value representing either the number of instances or the number of capacity units.
	Value: int
}

#DeploymentConfig: {
	// Configuration for automatic rollback if an error occurs during deployment.
	AutoRollbackConfiguration?: #AutoRollbackConfig
	// Configuration for blue-green update deployment policies.
	BlueGreenUpdatePolicy?: #BlueGreenUpdatePolicy
	// Configuration for rolling update deployment policies.
	RollingUpdatePolicy?: #RollingUpdatePolicy
}

#RollingUpdatePolicy: {
	// Specifies the maximum batch size for each rolling update.
	MaximumBatchSize: #CapacitySize
	// The maximum time allowed for the rolling update, in seconds.
	MaximumExecutionTimeoutInSeconds?: int
	// The maximum batch size for rollback during an update failure.
	RollbackMaximumBatchSize?: #CapacitySize
	// The time to wait between steps during the rolling update, in seconds.
	WaitIntervalInSeconds: int
}

#Tag: {
	// The key of the tag.
	Key: string
	// The value of the tag.
	Value: string
}

#TrafficRoutingConfig: {
	// Specifies the size of the canary traffic in a canary deployment.
	CanarySize?: #CapacitySize
	// Specifies the step size for linear traffic routing.
	LinearStepSize?: #CapacitySize
	// Specifies the type of traffic routing (e.g., 'AllAtOnce', 'Canary', 'Linear').
	Type: string
	// Specifies the wait interval between traffic shifts, in seconds.
	WaitIntervalInSeconds?: int
}

#VariantProperty: {
	// The type of variant property (e.g., 'DesiredInstanceCount', 'DesiredWeight', 'DataCaptureConfig').
	VariantPropertyType?: string
}
