package vpcblockpublicaccessoptions

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::VPCBlockPublicAccessOptions
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::VPCBlockPublicAccessOptions"
	Properties: #Properties
}
