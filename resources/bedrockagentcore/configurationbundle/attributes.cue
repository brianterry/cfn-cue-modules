package configurationbundle

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the configuration bundle.
	BundleArn: string & =~"^arn:aws:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:configuration-bundle/[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"
	// The unique identifier of the configuration bundle.
	BundleId: string & =~"^[a-zA-Z][a-zA-Z0-9-_]{0,99}-[a-zA-Z0-9]{10}$"
	// The timestamp when the configuration bundle was created.
	CreatedAt: string
	// The timestamp when the configuration bundle was last updated.
	UpdatedAt: string
	LineageMetadata: #VersionLineageMetadata
	// The version identifier of the configuration bundle.
	VersionId: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"
}
