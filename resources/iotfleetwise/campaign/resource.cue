package campaign

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::IoTFleetWise::Campaign Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTFleetWise::Campaign"
	Properties: #Properties
}
