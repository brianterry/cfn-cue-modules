package apnschannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::APNSChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::APNSChannel"
	Properties: #Properties
}
