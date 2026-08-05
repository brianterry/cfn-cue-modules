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

#FailoverConfig: {
	Primary: #Primary
	Secondary: #Secondary
}

#Primary: {
	HealthCheck: #HealthCheck
}

#ReplicationConfig: {
	State: #ReplicationState
}

#RoutingConfig: {
	FailoverConfig: #FailoverConfig
}

#Secondary: {
	Route: #Route
}
