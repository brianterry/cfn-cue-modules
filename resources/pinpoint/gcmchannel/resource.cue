package gcmchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::GCMChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::GCMChannel"
	Properties: #Properties
}
