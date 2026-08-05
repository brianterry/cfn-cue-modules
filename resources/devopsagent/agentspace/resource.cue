package agentspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DevOpsAgent::AgentSpace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DevOpsAgent::AgentSpace"
	Properties: #Properties
}
