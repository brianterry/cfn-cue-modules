package vpcendpointservicepermissions

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::VPCEndpointServicePermissions
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPCEndpointServicePermissions"
	Properties: #Properties
}
