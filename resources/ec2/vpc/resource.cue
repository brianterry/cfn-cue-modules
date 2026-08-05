package vpc

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a virtual private cloud (VPC).
// A VPC must have an associated IPv4 CIDR block. You can specify an IPv4 CIDR block or an IPAM-allocated IPv4 CIDR block. To associate an IPv6 CIDR block with the VPC, see [AWS::EC2::VPCCidrBlock](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html).
// For more information, see [Virtual private clouds (VPC)](https://docs.aws.amazon.com/vpc/latest/userguide/configure-your-vpc.html) in the *Amazon VPC User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPC"
	Properties: #Properties
}
