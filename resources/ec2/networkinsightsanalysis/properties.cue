package networkinsightsanalysis

#Properties: {
	AdditionalAccounts?: [...string]
	FilterInArns?: [...#ResourceArn]
	FilterOutArns?: [...#ResourceArn]
	NetworkInsightsPathId: string
	Tags?: [...#Tag]
}

#AdditionalDetail: {
	AdditionalDetailType?: string
	Component?: #AnalysisComponent
	LoadBalancers?: [...#AnalysisComponent]
	ServiceName?: string
}

#AlternatePathHint: {
	ComponentArn?: string
	ComponentId?: string
}

#AnalysisAclRule: {
	Cidr?: string
	Egress?: bool
	PortRange?: #PortRange
	Protocol?: #Protocol
	RuleAction?: string
	RuleNumber?: int
}

#AnalysisComponent: {
	Arn?: string
	Id?: string
}

#AnalysisLoadBalancerListener: {
	InstancePort?: #Port
	LoadBalancerPort?: #Port
}

#AnalysisLoadBalancerTarget: {
	Address?: #IpAddress
	AvailabilityZone?: string
	Instance?: #AnalysisComponent
	Port?: #Port
}

#AnalysisPacketHeader: {
	DestinationAddresses?: [...#IpAddress]
	DestinationPortRanges?: [...#PortRange]
	Protocol?: #Protocol
	SourceAddresses?: [...#IpAddress]
	SourcePortRanges?: [...#PortRange]
}

#AnalysisRouteTableRoute: {
	NatGatewayId?: string
	NetworkInterfaceId?: string
	Origin?: string
	State?: string
	TransitGatewayId?: string
	VpcPeeringConnectionId?: string
	destinationCidr?: string
	destinationPrefixListId?: string
	egressOnlyInternetGatewayId?: string
	gatewayId?: string
	instanceId?: string
}

#AnalysisSecurityGroupRule: {
	Cidr?: string
	Direction?: string
	PortRange?: #PortRange
	PrefixListId?: string
	Protocol?: #Protocol
	SecurityGroupId?: string
}

#Explanation: {
	Acl?: #AnalysisComponent
	AclRule?: #AnalysisAclRule
	Address?: #IpAddress
	Addresses?: [...#IpAddress]
	AttachedTo?: #AnalysisComponent
	AvailabilityZones?: [...string]
	Cidrs?: [...string]
	ClassicLoadBalancerListener?: #AnalysisLoadBalancerListener
	Component?: #AnalysisComponent
	ComponentAccount?: string
	ComponentRegion?: string
	CustomerGateway?: #AnalysisComponent
	Destination?: #AnalysisComponent
	DestinationVpc?: #AnalysisComponent
	Direction?: string
	ElasticLoadBalancerListener?: #AnalysisComponent
	ExplanationCode?: string
	IngressRouteTable?: #AnalysisComponent
	InternetGateway?: #AnalysisComponent
	LoadBalancerArn?: #ResourceArn
	LoadBalancerListenerPort?: #Port
	LoadBalancerTarget?: #AnalysisLoadBalancerTarget
	LoadBalancerTargetGroup?: #AnalysisComponent
	LoadBalancerTargetGroups?: [...#AnalysisComponent]
	LoadBalancerTargetPort?: #Port
	MissingComponent?: string
	NatGateway?: #AnalysisComponent
	NetworkInterface?: #AnalysisComponent
	PacketField?: string
	Port?: #Port
	PortRanges?: [...#PortRange]
	PrefixList?: #AnalysisComponent
	Protocols?: [...#Protocol]
	RouteTable?: #AnalysisComponent
	RouteTableRoute?: #AnalysisRouteTableRoute
	SecurityGroup?: #AnalysisComponent
	SecurityGroupRule?: #AnalysisSecurityGroupRule
	SecurityGroups?: [...#AnalysisComponent]
	SourceVpc?: #AnalysisComponent
	State?: string
	Subnet?: #AnalysisComponent
	SubnetRouteTable?: #AnalysisComponent
	TransitGateway?: #AnalysisComponent
	TransitGatewayAttachment?: #AnalysisComponent
	TransitGatewayRouteTable?: #AnalysisComponent
	TransitGatewayRouteTableRoute?: #TransitGatewayRouteTableRoute
	Vpc?: #AnalysisComponent
	VpcPeeringConnection?: #AnalysisComponent
	VpnConnection?: #AnalysisComponent
	VpnGateway?: #AnalysisComponent
	vpcEndpoint?: #AnalysisComponent
}

#IpAddress: string

#PathComponent: {
	AclRule?: #AnalysisAclRule
	AdditionalDetails?: [...#AdditionalDetail]
	Component?: #AnalysisComponent
	DestinationVpc?: #AnalysisComponent
	ElasticLoadBalancerListener?: #AnalysisComponent
	Explanations?: [...#Explanation]
	InboundHeader?: #AnalysisPacketHeader
	OutboundHeader?: #AnalysisPacketHeader
	RouteTableRoute?: #AnalysisRouteTableRoute
	SecurityGroupRule?: #AnalysisSecurityGroupRule
	SequenceNumber?: int
	ServiceName?: string
	SourceVpc?: #AnalysisComponent
	Subnet?: #AnalysisComponent
	TransitGateway?: #AnalysisComponent
	TransitGatewayRouteTableRoute?: #TransitGatewayRouteTableRoute
	Vpc?: #AnalysisComponent
}

#Port: int

#PortRange: {
	From?: int
	To?: int
}

#Protocol: string

#ResourceArn: string

#Tag: {
	Key: string
	Value?: string
}

#Tags: [...#Tag]

#TransitGatewayRouteTableRoute: {
	AttachmentId?: string
	DestinationCidr?: string
	PrefixListId?: string
	ResourceId?: string
	ResourceType?: string
	RouteOrigin?: string
	State?: string
}
