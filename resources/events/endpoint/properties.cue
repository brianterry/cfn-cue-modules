package endpoint

import "strings"

#Properties: {
	Description?: string & =~".*" & strings.MaxRunes(512)
	EventBuses: #EventBuses
	Name?: string & =~"^[\\.\\-_A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	ReplicationConfig?: #ReplicationConfig
	RoleArn?: string & =~"^arn:aws[a-z-]*:iam::\\d{12}:role\\/[\\w+=,.@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	RoutingConfig: #RoutingConfig
}

#EndpointEventBus: {
	EventBusArn: #EventBusArn
}

#EventBusArn: string & =~"^arn:aws[a-z-]*:events:[a-z]+-[a-z-]+-\\d+:\\d{12}:event-bus/[\\w.-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)

#EventBuses: [...#EndpointEventBus]

#FailoverConfig: {
	Primary: #Primary
	Secondary: #Secondary
}

#HealthCheck: string & =~"^arn:aws([a-z]|\\-)*:route53:::healthcheck/[\\-a-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(1600)

#Primary: {
	HealthCheck: #HealthCheck
}

#ReplicationConfig: {
	State: #ReplicationState
}

#ReplicationState: "ENABLED" | "DISABLED"

#Route: string & =~"^[\\-a-z0-9]+$" & strings.MinRunes(9) & strings.MaxRunes(20)

#RoutingConfig: {
	FailoverConfig: #FailoverConfig
}

#Secondary: {
	Route: #Route
}
