package smschannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::SMSChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::SMSChannel"
	Properties: #Properties
}
