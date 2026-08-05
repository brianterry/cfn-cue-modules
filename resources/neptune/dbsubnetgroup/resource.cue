package dbsubnetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Neptune::DBSubnetGroup type creates an Amazon Neptune DB subnet group. Subnet groups must contain at least two subnets in two different Availability Zones in the same AWS Region.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Neptune::DBSubnetGroup"
	Properties: #Properties
}
