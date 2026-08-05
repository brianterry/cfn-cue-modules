package resourcepolicy

#Properties: {
	// The JSON to use as the Resource-based Policy.
	PolicyDocument: string
	// The Arn of an APS Workspace that the PolicyDocument will be attached to.
	WorkspaceArn: string & =~"^arn:(aws|aws-us-gov|aws-cn):aps:[a-z0-9-]+:[0-9]+:workspace/[a-zA-Z0-9-]+$"
}
