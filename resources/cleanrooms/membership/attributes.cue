package membership

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & strings.MaxRunes(100)
	CollaborationArn: string & strings.MaxRunes(100)
	CollaborationCreatorAccountId: string & =~"^\\d+$" & strings.MinRunes(12) & strings.MaxRunes(12)
	MembershipIdentifier: string & =~"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}" & strings.MinRunes(36) & strings.MaxRunes(36)
}
