package securitygroupvpcassociation

#Properties: {
	// The group ID of the specified security group.
	GroupId: string
	// The ID of the VPC in the security group vpc association.
	VpcId: string
}

#SecurityGroupVpcAssociationState: "associating" | "associated" | "association-failed" | "disassociating" | "disassociated" | "disassociation-failed"
