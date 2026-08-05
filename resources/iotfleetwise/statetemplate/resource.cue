package statetemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::IoTFleetWise::StateTemplate Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTFleetWise::StateTemplate"
	Properties: #Properties
}
