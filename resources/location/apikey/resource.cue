package apikey

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Location::APIKey Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Location::APIKey"
	Properties: #Properties
}
