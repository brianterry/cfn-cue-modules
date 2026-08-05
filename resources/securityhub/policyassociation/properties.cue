package policyassociation

#Properties: {
	// The universally unique identifier (UUID) of the configuration policy or a value of SELF_MANAGED_SECURITY_HUB for a self-managed configuration
	ConfigurationPolicyId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$|^SELF_MANAGED_SECURITY_HUB$"
	// The identifier of the target account, organizational unit, or the root
	TargetId: string
	// Indicates whether the target is an AWS account, organizational unit, or the organization root
	TargetType: "ACCOUNT" | "ORGANIZATIONAL_UNIT" | "ROOT"
}
