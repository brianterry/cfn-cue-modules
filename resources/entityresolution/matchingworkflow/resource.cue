package matchingworkflow

import "github.com/brianterry/cfn-cue-modules/cfn"

// MatchingWorkflow defined in AWS Entity Resolution service
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EntityResolution::MatchingWorkflow"
	Properties: #Properties
}
