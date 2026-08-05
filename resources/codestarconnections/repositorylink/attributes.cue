package repositorylink

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A unique Amazon Resource Name (ARN) to designate the repository link.
	RepositoryLinkArn: string & =~"arn:(aws|aws-us-gov|aws-cn):.+:.+:[0-9]{12}:.+"
	// A UUID that uniquely identifies the RepositoryLink.
	RepositoryLinkId: string & =~"[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
	// The name of the external provider where your third-party code repository is configured.
	ProviderType: "GitHub" | "Bitbucket" | "GitHubEnterprise" | "GitLab" | "GitLabSelfManaged"
}
