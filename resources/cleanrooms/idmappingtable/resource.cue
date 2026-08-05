package idmappingtable

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents an association between an ID mapping workflow and a collaboration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRooms::IdMappingTable"
	Properties: #Properties
}
