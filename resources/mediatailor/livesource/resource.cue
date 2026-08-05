package livesource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaTailor::LiveSource Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaTailor::LiveSource"
	Properties: #Properties
}
