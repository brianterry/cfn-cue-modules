package membership

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents an AWS account that is a part of a collaboration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CleanRooms::Membership"
	Properties: #Properties
}
