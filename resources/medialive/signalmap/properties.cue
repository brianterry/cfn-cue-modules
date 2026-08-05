package signalmap

import "strings"

#Properties: {
	CloudWatchAlarmTemplateGroupIdentifiers?: [...string & =~"^[^\\s]+$"]
	// A resource's optional description.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// A top-level supported AWS resource ARN to discovery a signal map from.
	DiscoveryEntryPointArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	EventBridgeRuleTemplateGroupIdentifiers?: [...string & =~"^[^\\s]+$"]
	// If true, will force a rediscovery of a signal map if an unchanged discoveryEntryPointArn is provided.
	ForceRediscovery?: bool
	// A resource's name. Names must be unique within the scope of a resource type in a specific region.
	Name: string & =~"^[^\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: #TagMap
}

#FailedMediaResourceMap: {...}

#MediaResource: {
	Destinations?: [...#MediaResourceNeighbor]
	// The logical name of an AWS media resource.
	Name?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Sources?: [...#MediaResourceNeighbor]
}

#MediaResourceMap: {...}

#MediaResourceNeighbor: {
	// The ARN of a resource used in AWS media workflows.
	Arn: string & =~"^arn.+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The logical name of an AWS media resource.
	Name?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#MonitorDeployment: {
	// URI associated with a signal map's monitor deployment.
	DetailsUri?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	// Error message associated with a failed monitor deployment of a signal map.
	ErrorMessage?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	Status: #SignalMapMonitorDeploymentStatus
}

#SignalMapMonitorDeploymentStatus: "NOT_DEPLOYED" | "DRY_RUN_DEPLOYMENT_COMPLETE" | "DRY_RUN_DEPLOYMENT_FAILED" | "DRY_RUN_DEPLOYMENT_IN_PROGRESS" | "DEPLOYMENT_COMPLETE" | "DEPLOYMENT_FAILED" | "DEPLOYMENT_IN_PROGRESS" | "DELETE_COMPLETE" | "DELETE_FAILED" | "DELETE_IN_PROGRESS"

#SignalMapStatus: "CREATE_IN_PROGRESS" | "CREATE_COMPLETE" | "CREATE_FAILED" | "UPDATE_IN_PROGRESS" | "UPDATE_COMPLETE" | "UPDATE_REVERTED" | "UPDATE_FAILED" | "READY" | "NOT_READY"

#SuccessfulMonitorDeployment: {
	// URI associated with a signal map's monitor deployment.
	DetailsUri: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	Status: #SignalMapMonitorDeploymentStatus
}

#TagMap: {...}

#Unit: {...}
