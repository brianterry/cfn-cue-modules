package endpoint

import "strings"

#Properties: {
	// The type of access for the on-premise network connectivity for the Outpost endpoint. To access endpoint from an on-premises network, you must specify the access type and provide the customer owned Ipv4 pool.
	AccessType?: "CustomerOwnedIp" | "Private"
	// The ID of the customer-owned IPv4 pool for the Endpoint. IP addresses will be allocated from this pool for the endpoint.
	CustomerOwnedIpv4Pool?: string & =~"^ipv4pool-coip-([0-9a-f]{17})$"
	// The failure reason, if any, for a create or delete endpoint operation.
	FailedReason?: #FailedReason
	// The id of the customer outpost on which the bucket resides.
	OutpostId: string & =~"^(op-[a-f0-9]{17}|\\d{12}|ec2)$"
	// The ID of the security group to use with the endpoint.
	SecurityGroupId: string & =~"^sg-([0-9a-f]{8}|[0-9a-f]{17})$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The ID of the subnet in the selected VPC. The subnet must belong to the Outpost.
	SubnetId: string & =~"^subnet-([0-9a-f]{8}|[0-9a-f]{17})$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#FailedReason: {
	// The failure code, if any, for a create or delete endpoint operation.
	ErrorCode?: string
	// Additional error details describing the endpoint failure and recommended action.
	Message?: string
}

#NetworkInterface: {
	NetworkInterfaceId: string & strings.MinRunes(1) & strings.MaxRunes(100)
}
