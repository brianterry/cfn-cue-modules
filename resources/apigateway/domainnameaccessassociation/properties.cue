package domainnameaccessassociation

#Properties: {
	// The source of the domain name access association resource.
	AccessAssociationSource: string
	// The source type of the domain name access association resource.
	AccessAssociationSourceType: "VPCE"
	// The amazon resource name (ARN) of the domain name resource.
	DomainNameArn: string
	// An array of arbitrary tags (key-value pairs) to associate with the domainname access association.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
