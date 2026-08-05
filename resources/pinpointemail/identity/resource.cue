package identity

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::PinpointEmail::Identity
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PinpointEmail::Identity"
	Properties: #Properties
}
