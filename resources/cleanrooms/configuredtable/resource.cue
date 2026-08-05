package configuredtable

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a table that can be associated with collaborations
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRooms::ConfiguredTable"
	Properties: #Properties
}
