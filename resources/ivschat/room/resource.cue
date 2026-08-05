package room

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::IVSChat::Room.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVSChat::Room"
	Properties: #Properties
}
