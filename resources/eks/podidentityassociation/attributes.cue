package podidentityassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the pod identity association.
	AssociationArn: string
	// The ID of the pod identity association.
	AssociationId: string & strings.MinRunes(1)
	// The External Id of the pod identity association.
	ExternalId: string & strings.MinRunes(1)
}
