package vpcattachment

#Properties: {
	// The ID of a core network for the VPC attachment.
	CoreNetworkId: string
	// Vpc options of the attachment.
	Options?: #VpcOptions
	// The attachment to move from one network function group to another.
	ProposedNetworkFunctionGroupChange?: #ProposedNetworkFunctionGroupChange
	// The attachment to move from one segment to another.
	ProposedSegmentChange?: #ProposedSegmentChange
	// Routing policy label
	RoutingPolicyLabel?: string
	// Subnet Arn list
	SubnetArns: [...string]
	// Tags for the attachment.
	Tags?: [...#Tag]
	// The ARN of the VPC.
	VpcArn: string
}

#ProposedNetworkFunctionGroupChange: {
	// The rule number in the policy document that applies to this change.
	AttachmentPolicyRuleNumber?: int
	// The name of the network function group to change.
	NetworkFunctionGroupName?: string
	// The key-value tags that changed for the network function group.
	Tags?: [...#Tag]
}

#ProposedSegmentChange: {
	// The rule number in the policy document that applies to this change.
	AttachmentPolicyRuleNumber?: int
	// The name of the segment to change.
	SegmentName?: string
	// The key-value tags that changed for the segment.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}

#VpcOptions: {
	// Indicates whether to enable ApplianceModeSupport Support for Vpc Attachment. Valid Values: true | false
	ApplianceModeSupport?: bool
	// Indicates whether to enable private DNS Support for Vpc Attachment. Valid Values: true | false
	DnsSupport?: bool
	// Indicates whether to enable Ipv6 Support for Vpc Attachment. Valid Values: enable | disable
	Ipv6Support?: bool
	// Indicates whether to enable Security Group Referencing Support for Vpc Attachment. Valid Values: true | false
	SecurityGroupReferencingSupport?: bool
}
