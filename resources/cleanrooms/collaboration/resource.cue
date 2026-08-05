package collaboration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a collaboration between AWS accounts that allows for secure data collaboration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRooms::Collaboration"
	Properties: #Properties
}
