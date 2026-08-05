package sdisource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaLive::SdiSource Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::SdiSource"
	Properties: #Properties
}
