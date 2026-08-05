package vpcpeeringconnection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::VPCPeeringConnection
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPCPeeringConnection"
	Properties: #Properties
}
