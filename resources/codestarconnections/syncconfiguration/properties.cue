package syncconfiguration

#Properties: {
	// The name of the branch of the repository from which resources are to be synchronized,
	Branch: string
	// The source provider repository path of the sync configuration file of the respective SyncType.
	ConfigFile: string
	// Whether to enable or disable publishing of deployment status to source providers.
	PublishDeploymentStatus?: "ENABLED" | "DISABLED"
	// A UUID that uniquely identifies the RepositoryLink that the SyncConfig is associated with.
	RepositoryLinkId: string & =~"[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
	// The name of the resource that is being synchronized to the repository.
	ResourceName: string & =~"[a-za-z0-9_\\.-]+"
	// The IAM Role that allows AWS to update CloudFormation stacks based on content in the specified repository.
	RoleArn: string
	// The type of resource synchronization service that is to be configured, for example, CFN_STACK_SYNC.
	SyncType: string
	// When to trigger Git sync to begin the stack update.
	TriggerResourceUpdateOn?: "ANY_CHANGE" | "FILE_CHANGE"
}
