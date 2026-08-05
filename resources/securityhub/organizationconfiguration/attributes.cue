package organizationconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the OrganizationConfiguration being created and assigned as the unique identifier.
	OrganizationConfigurationIdentifier: string & =~"^[0-9]{12}/[a-zA-Z0-9-]{1,32}/securityhub-organization-configuration$"
	// Describes whether central configuration could be enabled as the ConfigurationType for the organization.
	Status: "PENDING" | "ENABLED" | "FAILED"
	// Provides an explanation if the value of Status is equal to FAILED when ConfigurationType is equal to CENTRAL.
	StatusMessage: string
	// Whether the maximum number of allowed member accounts are already associated with the Security Hub administrator account.
	MemberAccountLimitReached: bool
}
