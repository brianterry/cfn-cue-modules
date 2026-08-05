package channel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::Channel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::Channel"
	Properties: #Properties
}
