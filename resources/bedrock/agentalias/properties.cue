package agentalias

import "strings"

#Properties: {
	// Name for a resource.
	AgentAliasName: string & =~"^([0-9a-zA-Z][_-]?){1,100}$"
	// Identifier for a resource.
	AgentId: string & =~"^[0-9a-zA-Z]{10}$"
	// Description of the Resource.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// Routing configuration for an Agent alias.
	RoutingConfiguration?: [...#AgentAliasRoutingConfigurationListItem]
	Tags?: #TagsMap
}

#AgentAliasHistoryEvent: {
	// Time Stamp.
	EndDate?: string
	// Routing configuration for an Agent alias.
	RoutingConfiguration?: [...#AgentAliasRoutingConfigurationListItem]
	// Time Stamp.
	StartDate?: string
}

#AgentAliasRoutingConfigurationListItem: {
	// Agent Version.
	AgentVersion: string & =~"^(DRAFT|[0-9]{0,4}[1-9][0-9]{0,4})$" & strings.MinRunes(1) & strings.MaxRunes(5)
}
