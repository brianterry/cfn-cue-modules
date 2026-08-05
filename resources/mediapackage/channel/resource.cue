package channel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaPackage::Channel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackage::Channel"
	Properties: #Properties
}
