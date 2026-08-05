package idnamespace

import "github.com/brianterry/cfn-cue-modules/cfn"

// IdNamespace defined in AWS Entity Resolution service
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EntityResolution::IdNamespace"
	Properties: #Properties
}
