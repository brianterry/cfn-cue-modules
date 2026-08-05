package schemamapping

import "github.com/brianterry/cfn-cue-modules/cfn"

// SchemaMapping defined in AWS Entity Resolution service
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EntityResolution::SchemaMapping"
	Properties: #Properties
}
