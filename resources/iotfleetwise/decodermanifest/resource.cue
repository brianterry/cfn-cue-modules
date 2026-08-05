package decodermanifest

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::IoTFleetWise::DecoderManifest Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTFleetWise::DecoderManifest"
	Properties: #Properties
}
