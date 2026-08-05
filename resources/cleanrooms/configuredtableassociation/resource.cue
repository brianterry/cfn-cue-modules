package configuredtableassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a table that can be queried within a collaboration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRooms::ConfiguredTableAssociation"
	Properties: #Properties
}
