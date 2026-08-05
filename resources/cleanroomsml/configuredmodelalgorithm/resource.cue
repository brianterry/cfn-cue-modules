package configuredmodelalgorithm

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::CleanRoomsML::ConfiguredModelAlgorithm Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRoomsML::ConfiguredModelAlgorithm"
	Properties: #Properties
}
