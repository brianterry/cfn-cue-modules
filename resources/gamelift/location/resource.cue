package location

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::Location resource creates an Amazon GameLift (GameLift) custom location.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::Location"
	Properties: #Properties
}
