package vehicle

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::IoTFleetWise::Vehicle Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTFleetWise::Vehicle"
	Properties: #Properties
}
