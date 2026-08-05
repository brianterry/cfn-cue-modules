package placeindex

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Location::PlaceIndex Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Location::PlaceIndex"
	Properties: #Properties
}
