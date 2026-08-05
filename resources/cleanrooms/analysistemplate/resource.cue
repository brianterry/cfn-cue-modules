package analysistemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a stored analysis within a collaboration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRooms::AnalysisTemplate"
	Properties: #Properties
}
