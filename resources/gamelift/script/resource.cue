package script

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::Script resource creates a new script record for your Realtime Servers script. Realtime scripts are JavaScript that provide configuration settings and optional custom game logic for your game. The script is deployed when you create a Realtime Servers fleet to host your game sessions. Script logic is executed during an active game session.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::Script"
	Properties: #Properties
}
