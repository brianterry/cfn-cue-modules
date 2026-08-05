package workspace

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Required to identify a specific APS Workspace.
	WorkspaceId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]{1,99}$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// Workspace arn.
	Arn: string & =~"^arn:(aws|aws-us-gov|aws-cn):aps:[a-z0-9-]+:[0-9]+:workspace/[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// AMP Workspace prometheus endpoint
	PrometheusEndpoint: string
}
