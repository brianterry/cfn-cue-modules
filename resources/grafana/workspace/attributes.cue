package workspace

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The id that uniquely identifies a Grafana workspace.
	Id: string & =~"^g-[0-9a-f]{10}$"
	// The client ID of the AWS SSO Managed Application.
	SsoClientId: string
	SamlConfigurationStatus: #SamlConfigurationStatus
	// Endpoint for the Grafana workspace.
	Endpoint: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Status: #WorkspaceStatus
	// Timestamp when the workspace was created.
	CreationTimestamp: string
	// Timestamp when the workspace was last modified
	ModificationTimestamp: string
}
