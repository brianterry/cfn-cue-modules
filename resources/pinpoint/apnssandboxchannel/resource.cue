package apnssandboxchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::APNSSandboxChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::APNSSandboxChannel"
	Properties: #Properties
}
