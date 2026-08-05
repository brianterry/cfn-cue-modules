package configuredmodelalgorithmassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::CleanRoomsML::ConfiguredModelAlgorithmAssociation Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRoomsML::ConfiguredModelAlgorithmAssociation"
	Properties: #Properties
}
