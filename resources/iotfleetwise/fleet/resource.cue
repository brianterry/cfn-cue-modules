package fleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::IoTFleetWise::Fleet Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTFleetWise::Fleet"
	Properties: #Properties
}
