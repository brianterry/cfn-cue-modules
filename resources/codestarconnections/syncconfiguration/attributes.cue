package syncconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The name of the external provider where your third-party code repository is configured.
	ProviderType: "GitHub" | "Bitbucket" | "GitHubEnterprise" | "GitLab" | "GitLabSelfManaged"
	// the ID of the entity that owns the repository.
	OwnerId: string & =~"[a-za-z0-9_\\.-]+"
	// The name of the repository that is being synced to.
	RepositoryName: string & =~"[a-za-z0-9_\\.-]+"
}
