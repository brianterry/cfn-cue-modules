package alias

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::Alias resource creates an alias for an Amazon GameLift (GameLift) fleet destination.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::Alias"
	Properties: #Properties
}
