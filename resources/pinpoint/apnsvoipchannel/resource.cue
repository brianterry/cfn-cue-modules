package apnsvoipchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::APNSVoipChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::APNSVoipChannel"
	Properties: #Properties
}
