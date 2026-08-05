package app

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Amplify::App resource creates Apps in the Amplify Console. An App is a collection of branches.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Amplify::App"
	Properties: #Properties
}
