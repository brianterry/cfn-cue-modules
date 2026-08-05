package environment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::DataZone::Environment Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::Environment"
	Properties: #Properties
}
