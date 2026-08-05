package vpcendpointservice

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::VPCEndpointService
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPCEndpointService"
	Properties: #Properties
}
