package channel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MSK::Channel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MSK::Channel"
	Properties: #Properties
}
