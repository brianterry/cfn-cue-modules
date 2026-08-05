package gameservergroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::GameServerGroup resource creates an Amazon GameLift (GameLift) GameServerGroup.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::GameServerGroup"
	Properties: #Properties
}
