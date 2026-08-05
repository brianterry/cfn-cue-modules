package codesecurityintegration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Code Security Integration ARN
	Arn: string & =~"^arn:(aws[a-zA-Z-]*)?:inspector2:[a-z]{2}(-gov)?-[a-z]+-\\d{1}:\\d{12}:codesecurity-integration/[a-f0-9-]{36}$"
	// Integration Status
	Status: #IntegrationStatus
	// Reason for the current status
	StatusReason: string
	// Authorization URL for OAuth flow
	AuthorizationUrl: string & =~"^https://[-a-zA-Z0-9()@:%_+.~#?&//=]{1,1024}$"
	// Creation timestamp
	CreatedAt: string
	// Last update timestamp
	LastUpdatedAt: string
}
