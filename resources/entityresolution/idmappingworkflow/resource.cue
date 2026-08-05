package idmappingworkflow

import "github.com/brianterry/cfn-cue-modules/cfn"

// IdMappingWorkflow defined in AWS Entity Resolution service
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EntityResolution::IdMappingWorkflow"
	Properties: #Properties
}
