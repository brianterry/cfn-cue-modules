package service

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::DevOpsAgent::Service resource registers external services (like Dynatrace, MCP servers, GitLab) for integration with DevOpsAgent.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DevOpsAgent::Service"
	Properties: #Properties
}
