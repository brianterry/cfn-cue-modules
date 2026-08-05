package apnsvoipsandboxchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::APNSVoipSandboxChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::APNSVoipSandboxChannel"
	Properties: #Properties
}
