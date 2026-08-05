package vpcendpointconnectionnotification

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::VPCEndpointConnectionNotification
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPCEndpointConnectionNotification"
	Properties: #Properties
}
