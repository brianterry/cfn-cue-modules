package connectattachment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of a core network.
	CoreNetworkArn: string
	// Creation time of the attachment.
	CreatedAt: string
	// Last update time of the attachment.
	UpdatedAt: string
	// The type of attachment.
	AttachmentType: string
	// State of the attachment.
	State: string
	// The attachment resource ARN.
	ResourceArn: string
	// The ID of the attachment.
	AttachmentId: string
	// The ID of the attachment account owner.
	OwnerAccountId: string
	// The policy rule number associated with the attachment.
	AttachmentPolicyRuleNumber: int
	// The name of the segment attachment.
	SegmentName: string
	// Errors from the last modification of the attachment.
	LastModificationErrors: [...string]
}
