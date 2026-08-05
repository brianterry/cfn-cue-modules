package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Amplify::Domain resource allows you to connect a custom domain to your app.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Amplify::Domain"
	Properties: #Properties
}
