package integration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for Logs Integration Resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::Integration"
	Properties: #Properties
}
