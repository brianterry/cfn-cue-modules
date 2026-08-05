package agentspace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecurityAgent::AgentSpace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityAgent::AgentSpace"
	Properties: #Properties
}
