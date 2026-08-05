package vpnconcentrator

#Properties: {
	// Any tags assigned to the VPN concentrator.
	Tags?: [...#Tag]
	// The ID of the transit gateway associated with the VPN concentrator.
	TransitGatewayId: string
	// The type of VPN concentrator.
	Type: string
}

#Tag: {
	// The key of the tag.
	// Constraints: Tag keys are case-sensitive and accept a maximum of 127 Unicode characters. May not begin with ``aws:``.
	Key: string
	// The value of the tag.
	// Constraints: Tag values are case-sensitive and accept a maximum of 256 Unicode characters.
	Value: string
}
