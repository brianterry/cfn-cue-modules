package flow

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::AppFlow::Flow.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppFlow::Flow"
	Properties: #Properties
}
