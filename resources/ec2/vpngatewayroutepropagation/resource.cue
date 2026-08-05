package vpngatewayroutepropagation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::VPNGatewayRoutePropagation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPNGatewayRoutePropagation"
	Properties: #Properties
}
