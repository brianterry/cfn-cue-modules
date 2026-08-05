package statemachinealias

import "strings"

#Properties: {
	DeploymentPreference?: #DeploymentPreference
	// An optional description of the alias.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The alias name.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(80)
	RoutingConfiguration?: #RoutingConfiguration
	StateMachineArn?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#DeploymentPreference: {
	// A list of CloudWatch alarm names that will be monitored during the deployment. The deployment will fail and rollback if any alarms go into ALARM state.
	Alarms?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	// The time in minutes between each traffic shifting increment.
	Interval?: int & >=1 & <=2100
	// The percentage of traffic to shift to the new version in each increment.
	Percentage?: int & >=1 & <=99
	StateMachineVersionArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The type of deployment to perform.
	Type: "LINEAR" | "ALL_AT_ONCE" | "CANARY"
}

#RoutingConfiguration: [...#RoutingConfigurationVersion]

#RoutingConfigurationVersion: {
	// The Amazon Resource Name (ARN) that identifies one or two state machine versions defined in the routing configuration.
	StateMachineVersionArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The percentage of traffic you want to route to the state machine version. The sum of the weights in the routing configuration must be equal to 100.
	Weight: int & >=0 & <=100
}
