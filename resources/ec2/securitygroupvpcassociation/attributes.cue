package securitygroupvpcassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The owner of the VPC in the security group vpc association.
	VpcOwnerId: string
	// The state of the security group vpc association.
	State: #SecurityGroupVpcAssociationState
	// The reason for the state of the security group vpc association.
	StateReason: string
}
