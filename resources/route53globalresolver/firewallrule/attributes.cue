package firewallrule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	FirewallRuleId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	CreatedAt: string
	UpdatedAt: string
	Status: #CRResourceStatus
	QueryType: string & strings.MinRunes(0) & strings.MaxRunes(16)
}
