package directconnectgatewayattachment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of a core network for the Direct Connect Gateway attachment.
	CoreNetworkArn: string
	// Creation time of the attachment.
	CreatedAt: string
	// Last update time of the attachment.
	UpdatedAt: string
	// Attachment type.
	AttachmentType: string
	// State of the attachment.
	State: string
	// Id of the attachment.
	AttachmentId: string
	// Owner account of the attachment.
	OwnerAccountId: string
	// The policy rule number associated with the attachment.
	AttachmentPolicyRuleNumber: int
	// The name of the segment attachment..
	SegmentName: string
	// The name of the network function group attachment.
	NetworkFunctionGroupName: string
	// The ARN of the Resource.
	ResourceArn: string
	// Errors from the last modification of the attachment.
	LastModificationErrors: [...string]
}
