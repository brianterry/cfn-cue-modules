package vpcgatewayattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::VPCGatewayAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPCGatewayAttachment"
	Properties: #Properties
}
