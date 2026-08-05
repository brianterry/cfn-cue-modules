package replicationconfiguration

#Properties: {
	// The replication configuration for a registry.
	ReplicationConfiguration: #ReplicationConfiguration
}

#ReplicationConfiguration: {
	// An array of objects representing the replication destinations and repository filters for a replication configuration.
	Rules: [...#ReplicationRule]
}

#ReplicationDestination: {
	// The Region to replicate to.
	Region: #Region
	// The AWS account ID of the Amazon ECR private registry to replicate to. When configuring cross-Region replication within your own registry, specify your own account ID.
	RegistryId: #RegistryId
}

#ReplicationRule: {
	// An array of objects representing the destination for a replication rule.
	Destinations: [...#ReplicationDestination]
	// An array of objects representing the filters for a replication rule. Specifying a repository filter for a replication rule provides a method for controlling which repositories in a private registry are replicated.
	RepositoryFilters?: [...#RepositoryFilter]
}

#RepositoryFilter: {
	// The repository filter details. When the ``PREFIX_MATCH`` filter type is specified, this value is required and should be the repository name prefix to configure replication for.
	Filter: #Filter
	// The repository filter type. The only supported value is ``PREFIX_MATCH``, which is a repository name prefix specified with the ``filter`` parameter.
	FilterType: #FilterType
}
