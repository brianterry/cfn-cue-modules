package admchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::ADMChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::ADMChannel"
	Properties: #Properties
}
