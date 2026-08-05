package transitgatewaymulticastdomain

#Properties: {
	// The options for the transit gateway multicast domain.
	Options?: {
		AutoAcceptSharedAssociations?: string
		Igmpv2Support?: string
		StaticSourcesSupport?: string
	}
	// The tags for the transit gateway multicast domain.
	Tags?: [...#Tag]
	// The ID of the transit gateway.
	TransitGatewayId: string
}

#Tag: {
	// The key of the tag. Constraints: Tag keys are case-sensitive and accept a maximum of 127 Unicode characters. May not begin with aws:.
	Key?: string
	// The value of the tag. Constraints: Tag values are case-sensitive and accept a maximum of 255 Unicode characters.
	Value?: string
}
