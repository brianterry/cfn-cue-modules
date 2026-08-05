package trafficmirrortarget

#Properties: {
	// The description of the Traffic Mirror target.
	Description?: string
	// The ID of the Gateway Load Balancer endpoint.
	GatewayLoadBalancerEndpointId?: string
	// The network interface ID that is associated with the target.
	NetworkInterfaceId?: string
	// The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
	NetworkLoadBalancerArn?: string
	//  The tags to assign to the Traffic Mirror target.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
