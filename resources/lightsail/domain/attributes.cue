package domain

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the domain (read-only).
	Arn: string & =~"^arn:.+:lightsail:[a-z0-9-]+:[0-9]{12}:Domain/[a-zA-Z0-9][a-zA-Z0-9-_.]{0,253}[a-zA-Z0-9]$"
	// The support code. Include this code in your email to support when you have questions (read-only).
	SupportCode: string
	// The timestamp when the domain was created (read-only).
	CreatedAt: string
	// The AWS Region and Availability Zone where the domain was created (read-only).
	Location: {
	AvailabilityZone?: string
	RegionName?: string
}
	// The Lightsail resource type (read-only).
	ResourceType: "Domain"
	// An array of key-value pairs containing information about the domain entries.
	DomainEntries: [...#DomainEntry]
}
