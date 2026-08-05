package subnetcidrblock

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::EC2::SubnetCidrBlock resource creates association between subnet and IPv6 CIDR
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::SubnetCidrBlock"
	Properties: #Properties
}
