package association

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DevOpsAgent::Association defining how the AgentSpace interacts with external services like GitHub, Slack, AWS accounts, and others.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DevOpsAgent::Association"
	Properties: #Properties
}
