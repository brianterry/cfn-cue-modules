package transitgatewaymulticastgroupmember

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the subnet.
	SubnetId: string
	// The ID of the resource.
	ResourceId: string
	// The type of resource, for example a VPC attachment.
	ResourceType: string
	// Indicates that the resource is a transit gateway multicast group member.
	GroupSource: bool
	// Indicates that the resource is a transit gateway multicast group member.
	GroupMember: bool
	// The member type (for example, static).
	MemberType: string
	// The ID of the transit gateway attachment.
	TransitGatewayAttachmentId: string
}
