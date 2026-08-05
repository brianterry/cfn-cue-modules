package transitgatewaymeteringpolicyentry

#Properties: {
	// The list of IP addresses of the instances receiving traffic from the transit gateway
	DestinationCidrBlock?: string
	// The list of ports on destination instances receiving traffic from the transit gateway
	DestinationPortRange?: string
	// The ID of the source attachment through which traffic leaves a transit gateway
	DestinationTransitGatewayAttachmentId?: string
	// The type of the attachment through which traffic leaves a transit gateway
	DestinationTransitGatewayAttachmentType?: #TransitGatewayAttachmentResourceType
	// The resource owner information responsible for paying default billable charges for the traffic flow
	MeteredAccount: #TransitGatewayMeteringPayerType
	// The rule number of the metering policy entry
	PolicyRuleNumber: int
	// The protocol of the traffic
	Protocol?: string
	// The list of IP addresses of the instances sending traffic to the transit gateway for which the metering policy entry is applicable
	SourceCidrBlock?: string
	// The list of ports on source instances sending traffic to the transit gateway
	SourcePortRange?: string
	// The ID of the source attachment through which traffic enters a transit gateway
	SourceTransitGatewayAttachmentId?: string
	// The type of the attachment through which traffic enters a  transit gateway
	SourceTransitGatewayAttachmentType?: #TransitGatewayAttachmentResourceType
	// The ID of the transit gateway metering policy for which the entry is being created
	TransitGatewayMeteringPolicyId: string
}

#TransitGatewayAttachmentResourceType: "vpc" | "vpn" | "direct-connect-gateway" | "peering" | "network-function" | "vpn-concentrator" | "client-vpn"

#TransitGatewayMeteringPayerType: "source-attachment-owner" | "destination-attachment-owner" | "transit-gateway-owner"
