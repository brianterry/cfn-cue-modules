package flowalias

import "strings"

#Properties: {
	ConcurrencyConfiguration?: #FlowAliasConcurrencyConfiguration
	// Description of the Resource.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// Arn representation of the Flow
	FlowArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10}$" & strings.MaxRunes(2048)
	// Name for a resource.
	Name: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	// Routing configuration for a Flow alias.
	RoutingConfiguration: [...#FlowAliasRoutingConfigurationListItem]
	Tags?: #TagsMap
}

#FlowAliasConcurrencyConfiguration: {
	// Number of nodes executed concurrently at a time
	MaxConcurrency?: number & >=1 & <=100
	Type: #ConcurrencyType
}

#FlowAliasRoutingConfigurationListItem: {
	// Version.
	FlowVersion?: string & =~"^(DRAFT|[0-9]{0,4}[1-9][0-9]{0,4})$" & strings.MinRunes(1) & strings.MaxRunes(5)
}
