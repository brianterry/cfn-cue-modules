package vpcendpoint

import "strings"

#Properties: {
	// The name of the VPC Endpoint
	Name: string & =~"^[a-z][a-z0-9-]{2,31}$" & strings.MinRunes(3) & strings.MaxRunes(32)
	// The ID of one or more security groups to associate with the endpoint network interface
	SecurityGroupIds?: [...string & =~"^[\\w+\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)]
	// The ID of one or more subnets in which to create an endpoint network interface
	SubnetIds: [...string & =~"^subnet-([0-9a-f]{8}|[0-9a-f]{17})$" & strings.MinRunes(1) & strings.MaxRunes(32)]
	// The ID of the VPC in which the endpoint will be used.
	VpcId: string & =~"^vpc-[0-9a-z]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
}
