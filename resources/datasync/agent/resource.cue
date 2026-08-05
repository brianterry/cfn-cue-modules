package agent

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DataSync::Agent.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataSync::Agent"
	Properties: #Properties
}
