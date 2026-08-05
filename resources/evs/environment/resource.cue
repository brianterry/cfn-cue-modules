package environment

import "github.com/brianterry/cfn-cue-modules/cfn"

// An environment created within the EVS service
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EVS::Environment"
	Properties: #Properties
}
