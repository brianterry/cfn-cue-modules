package deploymentconfig

#Properties: {
	// The destination platform type for the deployment (Lambda, Server, or ECS).
	ComputePlatform?: string
	// A name for the deployment configuration. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the deployment configuration name. For more information, see Name Type.
	DeploymentConfigName?: string
	// The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.
	MinimumHealthyHosts?: #MinimumHealthyHosts
	// The configuration that specifies how the deployment traffic is routed.
	TrafficRoutingConfig?: #TrafficRoutingConfig
	// The zonal deployment config that specifies how the zonal deployment behaves
	ZonalConfig?: #ZonalConfig
}

#MinimumHealthyHosts: {
	Type: string
	Value: int
}

#MinimumHealthyHostsPerZone: {
	Type: string
	Value: int
}

#TimeBasedCanary: {
	CanaryInterval: int
	CanaryPercentage: int
}

#TimeBasedLinear: {
	LinearInterval: int
	LinearPercentage: int
}

#TrafficRoutingConfig: {
	TimeBasedCanary?: #TimeBasedCanary
	TimeBasedLinear?: #TimeBasedLinear
	Type: string
}

#ZonalConfig: {
	FirstZoneMonitorDurationInSeconds?: int
	MinimumHealthyHostsPerZone?: #MinimumHealthyHostsPerZone
	MonitorDurationInSeconds?: int
}
