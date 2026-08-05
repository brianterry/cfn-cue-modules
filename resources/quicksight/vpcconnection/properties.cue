package vpcconnection

import "strings"

#Properties: {
	AvailabilityStatus?: #VPCConnectionAvailabilityStatus
	AwsAccountId?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	DnsResolvers?: [...string]
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	RoleArn?: string
	SecurityGroupIds?: [...string & =~"^sg-[0-9a-z]*$" & strings.MinRunes(1) & strings.MaxRunes(255)]
	SubnetIds?: [...string & =~"^subnet-[0-9a-z]*$" & strings.MinRunes(1) & strings.MaxRunes(255)]
	Tags?: [...#Tag]
	VPCConnectionId?: string & =~"[\\w\\-]+" & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#NetworkInterface: {
	// <p>The availability zone that the network interface resides in.</p>
	AvailabilityZone?: string
	// <p>An error message.</p>
	ErrorMessage?: string
	// <p>The network interface ID.</p>
	NetworkInterfaceId?: string & =~"^eni-[0-9a-z]*$" & strings.MinRunes(0) & strings.MaxRunes(255)
	Status?: #NetworkInterfaceStatus
	// <p>The subnet ID associated with the network interface.</p>
	SubnetId?: string & =~"^subnet-[0-9a-z]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#NetworkInterfaceStatus: "CREATING" | "AVAILABLE" | "CREATION_FAILED" | "UPDATING" | "UPDATE_FAILED" | "DELETING" | "DELETED" | "DELETION_FAILED" | "DELETION_SCHEDULED" | "ATTACHMENT_FAILED_ROLLBACK_FAILED"

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#VPCConnectionAvailabilityStatus: "AVAILABLE" | "UNAVAILABLE" | "PARTIALLY_AVAILABLE"

#VPCConnectionResourceStatus: "CREATION_IN_PROGRESS" | "CREATION_SUCCESSFUL" | "CREATION_FAILED" | "UPDATE_IN_PROGRESS" | "UPDATE_SUCCESSFUL" | "UPDATE_FAILED" | "DELETION_IN_PROGRESS" | "DELETION_FAILED" | "DELETED"
