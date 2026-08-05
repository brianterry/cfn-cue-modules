package directconnectgatewayassociation

#Properties: {
	// The Amazon Resource Name (ARN) of the role to accept the Direct Connect Gateway association proposal. Needs directconnect:AcceptDirectConnectGatewayAssociationProposal permissions.
	AcceptDirectConnectGatewayAssociationProposalRoleArn?: string & =~"^arn:aws[a-z-]*:iam::[0-9]{12}:role/.+$"
	// The Amazon VPC prefixes to advertise to the Direct Connect gateway. This parameter is required when you create an association to a transit gateway.
	AllowedPrefixesToDirectConnectGateway?: [...string & =~"^[0-9a-fA-F:.]+/[0-9]+$"]
	// The ID or ARN of the virtual private gateway or transit gateway.
	AssociatedGatewayId: string | string | string
	// The ID or ARN of the Direct Connect gateway.
	DirectConnectGatewayId: string | string
}
