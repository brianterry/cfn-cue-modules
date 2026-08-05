package gamesessionqueue

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::GameSessionQueue resource creates an Amazon GameLift (GameLift) game session queue.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::GameSessionQueue"
	Properties: #Properties
}
