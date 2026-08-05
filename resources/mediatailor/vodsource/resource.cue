package vodsource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaTailor::VodSource Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaTailor::VodSource"
	Properties: #Properties
}
