package lambdahook

import "github.com/brianterry/cfn-cue-modules/cfn"

// This is a CloudFormation resource for the first-party AWS::Hooks::LambdaHook.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::LambdaHook"
	Properties: #Properties
}
