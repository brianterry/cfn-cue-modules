package branch

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Amplify::Branch resource creates a new branch within an app.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Amplify::Branch"
	Properties: #Properties
}
