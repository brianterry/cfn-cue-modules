package guardhook

import "github.com/brianterry/cfn-cue-modules/cfn"

// This is a CloudFormation resource for activating the first-party AWS::Hooks::GuardHook.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::GuardHook"
	Properties: #Properties
}
