package map

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Location::Map Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Location::Map"
	Properties: #Properties
}
