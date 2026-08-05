package channel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaTailor::Channel Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaTailor::Channel"
	Properties: #Properties
}
