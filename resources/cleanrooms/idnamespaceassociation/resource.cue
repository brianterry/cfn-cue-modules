package idnamespaceassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents an association between an ID namespace and a collaboration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRooms::IdNamespaceAssociation"
	Properties: #Properties
}
