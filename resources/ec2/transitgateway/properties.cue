package transitgateway

#Properties: {
	AmazonSideAsn?: int
	AssociationDefaultRouteTableId?: string
	AutoAcceptSharedAttachments?: string
	DefaultRouteTableAssociation?: string
	DefaultRouteTablePropagation?: string
	Description?: string
	DnsSupport?: string
	EncryptionSupport?: "disable" | "enable"
	MulticastSupport?: string
	PropagationDefaultRouteTableId?: string
	SecurityGroupReferencingSupport?: string
	Tags?: [...#Tag]
	TransitGatewayCidrBlocks?: [...string]
	VpnEcmpSupport?: string
}

#Tag: {
	Key: string
	Value: string
}
