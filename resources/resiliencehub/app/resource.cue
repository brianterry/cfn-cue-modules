package app

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for AWS::ResilienceHub::App.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResilienceHub::App"
	Properties: #Properties
}
