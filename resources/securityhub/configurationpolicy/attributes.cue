package configurationpolicy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the configuration policy.
	Arn: string & =~"^arn:aws\\S*:securityhub:[a-z0-9-]+:[0-9]{12}:configuration-policy/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
	// The universally unique identifier (UUID) of the configuration policy.
	Id: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
	// The date and time, in UTC and ISO 8601 format.
	CreatedAt: string
	// The date and time, in UTC and ISO 8601 format.
	UpdatedAt: string
	// Indicates whether the service that the configuration policy applies to is enabled in the policy.
	ServiceEnabled: bool
}
