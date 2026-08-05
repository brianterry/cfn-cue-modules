package subnet

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies a subnet for the specified VPC.
// For an IPv4 only subnet, specify an IPv4 CIDR block. If the VPC has an IPv6 CIDR block, you can create an IPv6 only subnet or a dual stack subnet instead. For an IPv6 only subnet, specify an IPv6 CIDR block. For a dual stack subnet, specify both an IPv4 CIDR block and an IPv6 CIDR block.
// For more information, see [Subnets for your VPC](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html) in the *Amazon VPC User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::Subnet"
	Properties: #Properties
}
