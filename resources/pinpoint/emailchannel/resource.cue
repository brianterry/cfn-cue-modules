package emailchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::EmailChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::EmailChannel"
	Properties: #Properties
}
