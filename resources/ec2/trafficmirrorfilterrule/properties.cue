package trafficmirrorfilterrule

#Properties: {
	// The description of the Traffic Mirror Filter rule.
	Description?: string
	// The destination CIDR block to assign to the Traffic Mirror rule.
	DestinationCidrBlock: string
	// The destination port range.
	DestinationPortRange?: #TrafficMirrorPortRange
	// The number of protocol, for example 17 (UDP), to assign to the Traffic Mirror rule.
	Protocol?: int
	// The action to take on the filtered traffic (accept/reject).
	RuleAction: #TrafficMirrorRuleAction
	// The number of the Traffic Mirror rule.
	RuleNumber: int
	// The source CIDR block to assign to the Traffic Mirror Filter rule.
	SourceCidrBlock: string
	// The source port range.
	SourcePortRange?: #TrafficMirrorPortRange
	// Any tags assigned to the Traffic Mirror Filter rule.
	Tags?: [...#Tag]
	// The direction of traffic (ingress/egress).
	TrafficDirection: #TrafficDirection
	// The ID of the filter that this rule is associated with.
	TrafficMirrorFilterId: string
}

#Tag: {
	Key: string
	Value: string
}

#TrafficMirrorPortRange: {
	// The first port in the Traffic Mirror port range.
	FromPort: int
	// The last port in the Traffic Mirror port range.
	ToPort: int
}
