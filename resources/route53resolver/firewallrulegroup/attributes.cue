package firewallrulegroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ResourceId
	Id: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Arn
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(600)
	// Count
	RuleCount: int
	// ResolverFirewallRuleGroupAssociation, possible values are COMPLETE, DELETING, UPDATING, and INACTIVE_OWNER_ACCOUNT_CLOSED.
	Status: "COMPLETE" | "DELETING" | "UPDATING" | "INACTIVE_OWNER_ACCOUNT_CLOSED"
	// FirewallRuleGroupStatus
	StatusMessage: string
	// AccountId
	OwnerId: string & strings.MinRunes(12) & strings.MaxRunes(32)
	// ShareStatus, possible values are NOT_SHARED, SHARED_WITH_ME, SHARED_BY_ME.
	ShareStatus: "NOT_SHARED" | "SHARED_WITH_ME" | "SHARED_BY_ME"
	// The id of the creator request.
	CreatorRequestId: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Rfc3339TimeString
	CreationTime: string & strings.MinRunes(20) & strings.MaxRunes(40)
	// Rfc3339TimeString
	ModificationTime: string & strings.MinRunes(20) & strings.MaxRunes(40)
	// FirewallRules
	FirewallRules: [...#FirewallRule]
}
