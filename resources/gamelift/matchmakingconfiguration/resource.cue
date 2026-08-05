package matchmakingconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::MatchmakingConfiguration resource creates an Amazon GameLift (GameLift) matchmaking configuration.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::MatchmakingConfiguration"
	Properties: #Properties
}
