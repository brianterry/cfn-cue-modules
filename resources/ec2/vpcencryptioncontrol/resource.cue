package vpcencryptioncontrol

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::VPCEncryptionControl
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPCEncryptionControl"
	Properties: #Properties
}
