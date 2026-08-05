package vpcconnector

import "strings"

#Properties: {
	// A list of IDs of security groups that App Runner should use for access to AWS resources under the specified subnets. If not specified, App Runner uses the default security group of the Amazon VPC. The default security group allows all outbound traffic.
	SecurityGroups?: [...string]
	// A list of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.
	Subnets: [...string]
	// A list of metadata items that you can associate with your VPC connector resource. A tag is a key-value pair.
	Tags?: [...#Tag]
	// A name for the VPC connector. If you don't specify a name, AWS CloudFormation generates a name for your VPC connector.
	VpcConnectorName?: string & =~"^[A-Za-z0-9][A-Za-z0-9-\\\\_]{3,39}$" & strings.MinRunes(4) & strings.MaxRunes(40)
}

#Tag: {
	Key?: string
	Value?: string
}
