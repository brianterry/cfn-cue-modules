package modelmanifest

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::IoTFleetWise::ModelManifest Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTFleetWise::ModelManifest"
	Properties: #Properties
}
