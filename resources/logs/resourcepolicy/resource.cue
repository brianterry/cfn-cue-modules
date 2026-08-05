package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// The resource schema for AWSLogs ResourcePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::ResourcePolicy"
	Properties: #Properties
}
