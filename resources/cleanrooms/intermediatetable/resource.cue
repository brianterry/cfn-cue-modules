package intermediatetable

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents an intermediate table that stores cached query results within a collaboration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRooms::IntermediateTable"
	Properties: #Properties
}
