package transitgatewayroutetableattachment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of a core network for the VPC attachment.
	CoreNetworkArn: string
	// The ID of a core network where you're creating a site-to-site VPN attachment.
	CoreNetworkId: string
	// Creation time of the attachment.
	CreatedAt: string
	// Last update time of the attachment.
	UpdatedAt: string
	// The type of attachment.
	AttachmentType: string
	// The state of the attachment.
	State: string
	// The ARN of the Resource.
	ResourceArn: string
	// The ID of the attachment.
	AttachmentId: string
	// Owner account of the attachment.
	OwnerAccountId: string
	// The Region where the edge is located.
	EdgeLocation: string
	// The policy rule number associated with the attachment.
	AttachmentPolicyRuleNumber: int
	// The name of the segment that attachment is in.
	SegmentName: string
	// Errors from the last modification of the attachment.
	LastModificationErrors: [...string]
}
