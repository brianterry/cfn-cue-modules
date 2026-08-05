package hostedzoneassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	HostedZoneAssociationId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	HostedZoneName: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	CreatedAt: string
	UpdatedAt: string
	Status: #HostedZoneAssociationStatus
}
