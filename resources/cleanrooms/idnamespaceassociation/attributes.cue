package idnamespaceassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	IdNamespaceAssociationIdentifier: #UUID
	Arn: string & strings.MaxRunes(256)
	MembershipArn: string & strings.MaxRunes(100)
	CollaborationIdentifier: #UUID
	CollaborationArn: string & strings.MaxRunes(100)
	InputReferenceProperties: #IdNamespaceAssociationInputReferenceProperties
}
