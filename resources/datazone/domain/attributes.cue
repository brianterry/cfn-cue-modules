package domain

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the root domain in Amazon Datazone.
	RootDomainUnitId: string & =~"^[a-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The ARN of the Amazon DataZone domain.
	Arn: string & =~"^arn:aws(|-cn|-us-gov):datazone:\\w+(?:-\\w+)+:\\d{12}:domain/dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The timestamp of when the Amazon DataZone domain was last updated.
	CreatedAt: string
	// The id of the Amazon DataZone domain.
	Id: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The timestamp of when the Amazon DataZone domain was last updated.
	LastUpdatedAt: string
	// The identifier of the AWS account that manages the domain.
	ManagedAccountId: string
	// The URL of the data portal for this Amazon DataZone domain.
	PortalUrl: string
	// The status of the Amazon DataZone domain.
	Status: #DomainStatus
}
