package matchmakingruleset

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::MatchmakingRuleSet resource creates an Amazon GameLift (GameLift) matchmaking rule set.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::MatchmakingRuleSet"
	Properties: #Properties
}
