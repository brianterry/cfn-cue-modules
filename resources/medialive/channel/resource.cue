package channel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MediaLive::Channel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::Channel"
	Properties: #Properties
}
