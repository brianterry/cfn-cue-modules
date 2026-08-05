package idmappingtable

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	IdMappingTableIdentifier: #UUID
	Arn: string & strings.MaxRunes(200)
	MembershipArn: string & strings.MaxRunes(100)
	CollaborationIdentifier: #UUID
	CollaborationArn: string & strings.MaxRunes(100)
	InputReferenceProperties: #IdMappingTableInputReferenceProperties
}
