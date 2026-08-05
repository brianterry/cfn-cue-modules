package agentstatus

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::AgentStatus
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::AgentStatus"
	Properties: #Properties
}
