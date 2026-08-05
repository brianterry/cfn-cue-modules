package firewallrulegroupassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id
	Id: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Arn
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(600)
	// ServicePrincipal
	ManagedOwnerName: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// ResolverFirewallRuleGroupAssociation, possible values are COMPLETE, DELETING, UPDATING, and INACTIVE_OWNER_ACCOUNT_CLOSED.
	Status: "COMPLETE" | "DELETING" | "UPDATING" | "INACTIVE_OWNER_ACCOUNT_CLOSED"
	// FirewallDomainListAssociationStatus
	StatusMessage: string
	// The id of the creator request.
	CreatorRequestId: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Rfc3339TimeString
	CreationTime: string & strings.MinRunes(20) & strings.MaxRunes(40)
	// Rfc3339TimeString
	ModificationTime: string & strings.MinRunes(20) & strings.MaxRunes(40)
}
