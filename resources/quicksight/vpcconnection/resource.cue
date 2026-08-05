package vpcconnection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of the AWS::QuickSight::VPCConnection Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::VPCConnection"
	Properties: #Properties
}
